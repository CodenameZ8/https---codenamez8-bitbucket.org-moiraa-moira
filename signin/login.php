<?php
    session_start();
    require'config.php';
    $salt='J2?H23!';
    if($_POST['rollno']!="")
    {    
        if($_POST['pass']!="")
        {
	       // get and clean data from form
		    $rollno =$_POST['rollno'];
            $pass = $_POST['pass'];
            $pass= md5($pass.$salt);    
        
		    $q="SELECT rollno,pass FROM account WHERE rollno='$rollno' AND pass='$pass'";   
            $res=mysqli_query($conn,$q);
            $row = mysqli_fetch_row($res);
            
        	if($row[0]==$rollno && $row[1]==$pass) 
		    {
                $_SESSION['rollno']=$rollno;
			    $_SESSION['EXPIRES'] = time() + 3600;    
                header('Location: /main/');
		    }
            else
            {
                header('Location: /signin/unauth.php');
            }
        
        }
    }
    else
    {
                   header('Location: /signin/unauth.php');
    }
?>