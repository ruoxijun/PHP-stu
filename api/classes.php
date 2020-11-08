<?php
$id=$_GET["id"];

$mysqli = new mysqli('localhost','root','991314','student');

$mysqli->set_charset('utf8');

$sql ="select ClassID as id,Classname as name from t_classes where ProID='".$id."'";

$result = $mysqli->query($sql);

$datas=$result->fetch_all(MYSQLI_ASSOC);

$result->free();

$classes=['classes'=>$datas];

echo json_encode($classes);

?>