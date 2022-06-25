<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$lang_id = $_GET['id'];

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("DELETE FROM tbl_language WHERE id=:langid AND member_no = '$myid'");
$stmt->bindParam(':langid', $lang_id);
$stmt->execute();
header("location:../language.php?r=0591");				  
}catch(PDOException $e)
{

}

?>

