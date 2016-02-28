<?php
    require('config.php');
   // require('template.html');
    $salt='J2?H23!';
	
	  
	date_default_timezone_set('Asia/Kolkata');//date stamp
    $dat= date("F j, Y, g:i a");//date	
	$email=$_POST['email_id'];// EMail id 
	$name=$_POST['first_name'];//First name
	//$lname=$_POST['last_name'];// Last name
    $rollno=$_POST['rollno'];
    //$name = $fname . " ". $lname;
	$phno=$_POST['phno'];
    $cgpa=$_POST['cgpa'];
	$pass=md5($_POST['pass_word'].$salt);// encrypted password
    $year=$_POST['year'];
	$ccode=md5(uniqid(rand())); // confirmation code
	//Inserting values into table "temp_user"
    //$qu=mysqli_query($connect,"use rash");
    
    $query="INSERT INTO temp_user(rollno,name,email,pass,cgpa,year,phno,date,ccode) VALUES ('$rollno','$name','$email','$pass',$cgpa,$year,'$phno','$dat','$ccode')";
echo $query;
	$q=mysqli_query($connect,$query);
	//EMAIL !!
	if($q)//Checking for MySQL Query error
	{
		$subject="Comfirmation Mail ";
		$header="from: rash <pepsi336@gmail.com>";
		$message="Your Comfirmation link \r\n";
		$message.="Click on this link to activate your account \r\n";
		$message.="http://localhost/confirm/index.php?passkey=$ccode";// The Activation link
		$sent_mail = mail($email,$subject,$message,$header); // Sending Email
	}
	else
		echo "<h3>HELLO , WORLD ... Something went wrong,,.. :(</h> ";// Error reporting 
	// if  email succesfully sent
	if($sent_mail)
	{
		echo "<h3>Your Confirmation link Has Been Sent To Your Email Address.</h3>";
	}
	else 
	{
		echo "<h3>Cannot send Confirmation link to your e-mail address</h3>";
	}
    
	
?>
