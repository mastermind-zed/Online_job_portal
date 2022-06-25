<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$id = $_POST['refid'];
$refname = ucwords($_POST['name']);
$refmail = $_POST['email'];
$reftitle = ucwords($_POST['title']);
$refphone = $_POST['phone'];
$instutuion = strtoupper($_POST['institution']);

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("UPDATE tbl_referees SET ref_name = :refname, ref_mail = :refmail, ref_title = :reftitle, ref_phone = :refphone, institution = :institution WHERE id= :refid AND member_no = '$myid'");
$stmt->bindParam(':refname', $refname);
$stmt->bindParam(':refmail', $refmail);
$stmt->bindParam(':reftitle', $reftitle);
$stmt->bindParam(':refphone', $refphone);
$stmt->bindParam(':institution', $instutuion);
$stmt->bindParam(':refid', $id);
$stmt->execute();
header("location:../referees.php?r=7642");					  
}catch(PDOException $e)
{

}

?>