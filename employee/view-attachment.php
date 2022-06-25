<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bwire Jobs - View Attachment</title>
<link rel="shortcut icon" href="../images/ico/favicon.png">
<link href="../css/main.css" rel="stylesheet">
</head>

<body>
<?php
require '../constants/db_config.php';
include 'constants/check-login.php';
$file_id = $_GET['id'];

if ($user_online == "true") {
if ($myrole == "employee") {
}else{
header("location:../");		
}
}else{
header("location:../");	
}

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("SELECT * FROM tbl_other_attachments WHERE id = :fileid AND member_no = '$myid'");
$stmt->bindParam(':fileid', $file_id);
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row)
{
    $certificate = $row['attachment'];
	$title = $row['title'];
	
	?>
<iframe  style="border:none;" src="../ViewerJS/?title=<?php echo "$title"; ?>#<?php echo 'data:application/pdf;base64,'.base64_encode($certificate).'' ?>" height="100%" width="100%"></iframe>

<?php
}

					  
}catch(PDOException $e)
{

}

?>
</body>

</html>

