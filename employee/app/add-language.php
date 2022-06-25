<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$language = ucwords($_POST['language']);
$read = ucwords($_POST['read']);
$speak = ucwords($_POST['speak']);
$write = ucwords($_POST['write']);

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("INSERT INTO tbl_language (member_no, language, speak, reading, writing) VALUES (:member, :language, :speak, :reading, :writing)");
$stmt->bindParam(':member', $myid);
$stmt->bindParam(':language', $language);
$stmt->bindParam(':speak', $speak);
$stmt->bindParam(':reading', $read);
$stmt->bindParam(':writing', $write);
$stmt->execute();
 header("location:../language.php?r=9367");					  
}catch(PDOException $e)
{

}
	

?>