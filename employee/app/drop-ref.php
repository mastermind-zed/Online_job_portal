<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$ref_id = $_GET['id'];

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("DELETE FROM tbl_referees WHERE id=:refid AND member_no = '$myid'");
$stmt->bindParam(':refid', $ref_id);
$stmt->execute();
header("location:../referees.php?r=9517");					  
}catch(PDOException $e)
{

}

?>

