<html>
 <head>
 	<title>Finish Sign Up | Lovely♥Network</title>
 </head>
 <body>
 	<?php
	include('dbconnection.php');
    $fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$rpassword = $_POST['rpassword'];
	$email = $_POST['email'];
	$gender = $_POST['gender'];
	$contact = $_POST['contact'];
	$bday=$_POST['month'] . "-" . $_POST['day'] . "-" . $_POST['year'];
    $sql="INSERT INTO members(username, password, fname, lname, contact, email, bday, gender, DateTime) VALUES('$username','$password','$fname','$lname','$contact', '$email','$bday','$gender',DateTime())";
    $result=mysql_query($sql); //HE ISHWAR YA ALLA HE DATA
echo $result;
mysql_close($con);
?>
 </body>
</html>