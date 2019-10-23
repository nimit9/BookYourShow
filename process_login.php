<?php
include('config.php');
session_start();
$username = $_POST["Username"];
$pass = $_POST["Password"];
$qry=mysqli_query($con,"select * from user where username='$username' and password='$pass'");
if(mysqli_num_rows($qry))
{
	$usr=mysqli_fetch_array($qry);
	if($usr['username']==$username)
	{
		$_SESSION['user']=$usr['username'];
		if(isset($_SESSION['show']))
		{
			header('location:booking.php');
		}
		else
		{
			header('location:index.php');
		}
	}
	else
	{
		$_SESSION['error']="Login Failed!";
		header("location:login.php");
	}
	
}
else
{
	$_SESSION['error']="Login Failed!";
	header("location:login.php");
}
?>