<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$exp_id = $_GET['id'];

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("DELETE FROM tbl_experience WHERE id=:expid AND member_no = '$myid'");
$stmt->bindParam(':expid', $exp_id);
$stmt->execute();
header("location:../experience.php?r=0593");				  
}catch(PDOException $e)
{

}
?>

