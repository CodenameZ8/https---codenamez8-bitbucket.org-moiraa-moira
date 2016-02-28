<?php
    session_start();
    $q = $_REQUEST["q"];
    $roll=$_SESSION['rollno'];
    if($q==$roll)
        echo 4;
    else
    {
        include "config.php";
        $query="Select status from request where tuser_id='$roll'";
        $res=mysqli_query($connect,$query);
        if(!mysqli_num_rows($res))
        {
            $query="Select rollno,name from account where rollno='$q'";
            $res=mysqli_query($connect,$query);
            if(mysqli_num_rows($res))
            {
                $query="Select rollno,name from account where rollno='$q' and team_id=0";
                $res1=mysqli_query($connect,$query);
                if(mysqli_num_rows($res1))
                {
                    $row = mysqli_fetch_row($res);
                    $res1=mysqli_query($connect,$query);
                    $query="Insert into request(fuser_id,tuser_id,status) values('$roll','$row[0]','Request  Pending')";          
                    if(!$res1)
                        echo 3;
                    else
                        echo $row[0]." ".$row[1];
                }
                else
                    echo 1;
            }
            else
                echo 2;
        }
        else
            echo 5;
    }
?>
