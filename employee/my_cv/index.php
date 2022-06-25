<?php
require('html_table.php');
require '../.././constants/db_config.php';
require '../constants/check-login.php';

if ($user_online == "true") {
if ($myrole == "employee") {
}else{
header("location:../");		
}
}else{
header("location:../");	
}

$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$stmt = $conn->prepare("SELECT * FROM tbl_users WHERE member_no = '$myid'");
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row)
{
$mygender = $row['gender'];
$myemail = $row['email'];
$mycountry = $row['country'];
$mycity = $row['city'];
$mystreet = $row['street'];
$myzip = $row['zip'];

}

$pdf=new PDF_HTML_Table();
$pdf->AddPage();
$pdf->SetTitle(''.$myfname.' '.$mylname.' CV');
$pdf->SetFont('Arial','B',25);
$pdf->SetDrawColor(79,129,188);
$pdf->SetFillColor(79,129,188);
$pdf->SetTextColor(255,255,255);
$pdf->Cell(0,9,''.$myfname.' '.$mylname.'',1,1,'C',true);
$pdf->SetFont('Arial','B',12);
$pdf->Cell(0,9,''.$mytitle.'',1,1,'C',true);

$pdf->Ln(4);

$pdf->SetFont('Arial','B',8);
$pdf->SetDrawColor(79,129,188);
$pdf->SetFillColor(255,255,255);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(0,9,''.$mygender.', '.$myemail.', '.$mycountry.','.$mycity.','.$mystreet.','.$myzip.'',1,1,'C',true);

$pdf->Ln(4);

$pdf->SetFont('Arial','B',14);
$pdf->SetDrawColor(184,204,229);
$pdf->SetFillColor(184,204,229);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(80,9,'Professional Summary',1,1,'L',true);
$pdf->SetFont('Arial','',11);
$pdf->WriteHTML("<br>$mydesc <br><br>");


$pdf->Ln(4);

$pdf->SetFont('Arial','B',14);
$pdf->SetDrawColor(184,204,229);
$pdf->SetFillColor(184,204,229);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(80,9,'Employment Experience',1,1,'L',true);

$pdf->SetDrawColor(255,255,255);
$pdf->SetFillColor(255,255,255);


$stmt = $conn->prepare("SELECT * FROM tbl_experience WHERE member_no = '$myid'");
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row)
{
	$exptitle = $row['title'];
	$institution = $row['institution'];
	$start_date = $row['start_date'];
	$end_date = $row['end_date'];
	$duties = $row['duties'];
	
    $pdf->SetFont('Arial','i',12);
	$pdf->Cell(80,9,$institution,1,1,'L',true);
	$pdf->SetFont('Arial','',11);
    $pdf->WriteHTML("<b>$exptitle - </b>($start_date to $end_date) <br>$duties<br>");		

}
	


$pdf->Ln(5);

$pdf->SetFont('Arial','B',14);
$pdf->SetDrawColor(184,204,229);
$pdf->SetFillColor(184,204,229);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(80,9,'Training & Workshop',1,1,'L',true);

$pdf->SetDrawColor(255,255,255);
$pdf->SetFillColor(255,255,255);


$stmt = $conn->prepare("SELECT * FROM tbl_training WHERE member_no = '$myid'");
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row)
{
	$exptitle = $row['training'];
	$institution = $row['institution'];
	$timeframe = $row['timeframe'];
	
	$pdf->SetFont('Arial','i',12);
	$pdf->Cell(80,9,$institution,1,1,'L',true);
	$pdf->SetFont('Arial','',11);
    $pdf->WriteHTML("<b>$exptitle</b> - ($timeframe)<br>");	

}


$pdf->Ln(5);

$pdf->SetFont('Arial','B',14);
$pdf->SetDrawColor(184,204,229);
$pdf->SetFillColor(184,204,229);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(80,9,'Language Proficiency',1,1,'L',true);

$pdf->SetDrawColor(255,255,255);
$pdf->SetFillColor(255,255,255);

$stmt = $conn->prepare("SELECT * FROM tbl_language WHERE member_no = '$myid'");
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row)
{
	$language = $row['language'];
	$speak = $row['speak'];
	$read = $row['reading'];
	$write = $row['writing'];
	
    $pdf->SetFont('Arial','i',12);
	$pdf->Cell(80,9,$language,1,1,'L',true);
	
    $pdf->SetFont('Arial','',11);
    $pdf->WriteHTML("Speaking $speak , Reading $read , Writing $write<br>");	

}


$pdf->Ln(5);

$pdf->SetFont('Arial','B',14);
$pdf->SetDrawColor(184,204,229);
$pdf->SetFillColor(184,204,229);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(80,9,'Professional Qualifications',1,1,'L',true);

$pdf->SetDrawColor(255,255,255);
$pdf->SetFillColor(255,255,255);


$stmt = $conn->prepare("SELECT * FROM tbl_professional_qualification WHERE member_no = '$myid'");
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row)
{
    $country = $row['country'];
	$institution = $row['institution'];
	$ptitle = $row['title'];
	$timeframe = $row['timeframe'];
	
	$pdf->SetFont('Arial','i',12);
	$pdf->Cell(80,9,$institution,1,1,'L',true);
	
    $pdf->SetFont('Arial','',11);
    $pdf->WriteHTML("<b>$ptitle</b> -  ($timeframe)<br>");	

}


$pdf->Ln(5);

$pdf->SetFont('Arial','B',14);
$pdf->SetDrawColor(184,204,229);
$pdf->SetFillColor(184,204,229);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(80,9,'Academic Qualifications',1,1,'L',true);

$pdf->SetDrawColor(255,255,255);
$pdf->SetFillColor(255,255,255);

$stmt = $conn->prepare("SELECT * FROM tbl_academic_qualification WHERE member_no = '$myid'");
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row)
{
    $country = $row['country'];
	$institution = $row['institution'];
	$ptitle = $row['course'];
	$timeframe = $row['timeframe'];
	$level = $row['level'];
	
	$pdf->SetFont('Arial','i',12);
	$pdf->Cell(80,9,$institution,1,1,'L',true);
	
    $pdf->SetFont('Arial','',11);
    $pdf->WriteHTML("<b>$ptitle</b> - ($timeframe) $level Level<br>");	

}


$pdf->Ln(5);

$pdf->SetFont('Arial','B',14);
$pdf->SetDrawColor(184,204,229);
$pdf->SetFillColor(184,204,229);
$pdf->SetTextColor(0,0,0);
$pdf->Cell(80,9,'Referees',1,1,'L',true);

$pdf->SetDrawColor(255,255,255);
$pdf->SetFillColor(255,255,255);

$stmt = $conn->prepare("SELECT * FROM tbl_referees WHERE member_no = '$myid'");
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row)
{
    $ref = $row['ref_name'];
	$refmail = $row['ref_mail'];
	$reftitle = $row['ref_title'];
	$refphone = $row['ref_phone'];
	$refinst = $row['institution'];
	
    $pdf->SetFont('Arial','',11);
    $pdf->WriteHTML("<li>$ref<br>$refinst<br>$refphone<br>$refmail</li><br>");	

}



$pdf->Output(''.$myfname.' '.$mylname.' CV.pdf', 'I');
?>