 <?php

    $q = $_REQUEST["q"];
    $v=0;
 
     if(strlen($q)>5)
     {
    require('config.php');
    $qu=mysqli_query($connect,"use rash");
    $query="select id from account where uname='$q'";
    $query1="select id from temp_user where uname='$q'";
    $res=mysqli_query($connect,$query);
    $res1=mysqli_query($connect,$query1);
    $row=mysqli_fetch_row($res);
    $row1=mysqli_fetch_row($res1);
    if($row || $row1)
    {
        echo 'used';
       
    }
    else
    {
        echo 'valid';
        $v=1;
         
    }
     }


?>
 