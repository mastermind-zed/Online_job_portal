<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bwire Jobs - View Certificate</title>
<link rel="shortcut icon" href="../images/ico/favicon.png">
<link href="../css/main.css" rel="stylesheet">
</head>

<body>
<?php
require '../constants/db_config.php';
require 'constants/check-login.php';
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

	
$stmt = $conn->prepare("SELECT * FROM tbl_academic_qualification WHERE id = :fileid  AND member_no = '$myid'");
$stmt->bindParam(':fileid', $file_id);
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row)
{
    $certificate = $row['certificate'];
	$transcript = $row['transcript'];
	
	?>
	<div style="width:100%">
    <iframe  style="border:none;" src="../ViewerJS/?title=CERTIFICATE#<?php echo 'data:application/pdf;base64,'.base64_encode($certificate).'' ?>" height="100%" width="100%"></iframe>
    <iframe style="border:none;" src="../ViewerJS/?title=TRANSCRIPT#<?php echo 'data:application/pdf;base64,'.base64_encode($transcript).'' ?>" height="100%" width="100%"></iframe>
    </div>

<?php
}

					  
}catch(PDOException $e)
{

}

?>
</body>

</html>