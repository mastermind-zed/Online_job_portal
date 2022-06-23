<?php
session_start();
$usermail = $_SESSION['resetmail'];
$new_password = md5($_POST['password']);

require '../constants/db_config.php';

    try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
    $stmt = $conn->prepare("UPDATE tbl_users SET login = :newlogin WHERE email= :email");
	$stmt->bindParam(':newlogin', $new_password);
    $stmt->bindParam(':email', $usermail);
    $stmt->execute();
	
	$stmt = $conn->prepare("DELETE FROM tbl_tokens WHERE email = :email");
    $stmt->bindParam(':email', $usermail);
    $stmt->execute();
	$_SESSION['resetmail'] = "";
	header("location:../login.php?r=3091");
					  
	}catch(PDOException $e)
    {

    }
	

?>

