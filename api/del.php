<?php
$StuNo=$_GET["StuNo"];

$mysqli = new mysqli('localhost','root','991314','student');

$mysqli->set_charset('utf8');

$sql ="update t_students set DeleteTime=1 where StuNo='".$StuNo."'";

$result = $mysqli->query($sql);

echo json_encode($result);

?>