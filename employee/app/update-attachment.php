<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$title = ucwords($_POST['title']);
$issuer = ucwords($_POST['issuer']);
$certificate = addslashes(file_get_contents($_FILES['certificate']['tmp_name']));
$certid = $_POST['attid'];

if ($certificate == "") {
	
try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = $conn->prepare("UPDATE tbl_other_attachments SET title = :title, issuer = :issuer WHERE id=:certid AND member_no = '$myid'");
$stmt->bindParam(':title', $title);
$stmt->bindParam(':issuer', $issuer);
$stmt->bindParam(':certid', $certid);
$stmt->execute();
header("location:../attachments.php?r=7764");					  
}catch(PDOException $e)
{

}
	
}else{
	
if ($_FILES["certificate"]["size"] > 1000000) {
header("location:../attachments.php?r=2290");
}else{
try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = $conn->prepare("UPDATE tbl_other_attachments SET title = :title, issuer = :issuer, attachment = '$certificate' WHERE id=:certid AND member_no = '$myid'");
$stmt->bindParam(':title', $title);
$stmt->bindParam(':issuer', $issuer);
$stmt->bindParam(':certid', $certid);
$stmt->execute();
header("location:../attachments.php?r=7764");					  
}catch(PDOException $e)
{

}

}
	
}

?>