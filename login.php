<?php
include('dbconnection.php');
$login = $_POST['userid'];
$password = $_POST['password'];
$cc = $_POST['cc'];
$sql="select * from members where username='$login' and Password='$password'";
$result=mysql_query($sql,$con);
while($row = mysql_fetch_array($result))
  {
  	echo "welcome ".$row['fname'] . " " . $row['lname'];
  	if($cc){
  		setcookie("id", $row['id'], time()+60*60*24*30);
  		setcookie("fname", $row['fname'], time()+60*60*24*30);
  		setcookie("username", $row['username'], time()+60*60*24*30);
  	}
  	
  }
mysql_close($con);