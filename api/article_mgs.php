<?php
$class=$_GET["class"];
// echo $class;
$mysqli = new mysqli('localhost','root','991314','student');

$mysqli->set_charset('utf8');

$sql='';
if($class!=""){$sql ="select * from v_article_pro where class='{$class}'";}
else{$sql ="select * from v_article_pro";}

$result = $mysqli->query($sql);

$datas=$result->fetch_all(MYSQLI_ASSOC);

$result->free();

$classes=[$datas];

echo json_encode($classes);

?>