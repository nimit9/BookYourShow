<?php
    session_start();
    include('config.php');
    extract($_POST);
    $sql = "INSERT INTO `user` (`username`, `name`, `password`, `email`, `phone_no`) VALUES('$username','$name',$password','$email','$phone_no')";
    mysqli_query($con, $sql);
    echo $email;
    $id=mysqli_insert_id($con);
    mysqli_query($con,"insert into  tbl_login values(NULL,'$id','$email','$password','2')");
    $_SESSION['user']=$id;
    header('location:index.php');
?>