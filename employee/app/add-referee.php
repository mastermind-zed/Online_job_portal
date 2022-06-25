<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$refname = ucwords($_POST['name']);
$refmail = $_POST['email'];
$reftitle = ucwords($_POST['title']);
$refphone = $_POST['phone'];
$instutuion = strtoupper($_POST['institution']);

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("INSERT INTO tbl_referees (member_no, ref_name, ref_mail, ref_title, ref_phone, institution)
 VALUES (:member, :refname, :refmail, :reftitle, :refphone, :institution)");
$stmt->bindParam(':member', $myid);
$stmt->bindParam(':refname', $refname);
$stmt->bindParam(':refmail', $refmail);
$stmt->bindParam(':reftitle', $reftitle);
$stmt->bindParam(':refphone', $refphone);
$stmt->bindParam(':institution', $instutuion);
$stmt->execute();
header("location:../referees.php?r=2380");					  
}catch(PDOException $e)
{

}


?>
