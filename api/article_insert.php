<?php
header('Content-type:text/html;charset=utf-8');
$firstname=$_GET["firstname"];
$blog_category=$_GET["blog_category"];
$jj=$_GET["jj"];
$myeditor=$_GET["myeditor"];

// echo $firstname,"<hr>",$blog_category,"<hr>",$jj,"<hr>",$myeditor;

$mysqli = new mysqli('localhost','root','991314','student');

$mysqli->set_charset('utf8');

$sql ="insert into t_article values('{$firstname}','{$blog_category}','{$jj}','{$myeditor}')";

$result = $mysqli->query($sql);

$mysqli->close();

echo json_encode($result);
?>