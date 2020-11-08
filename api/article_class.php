<?php
$id=$_GET["id"];

$mysqli = new mysqli('localhost','root','991314','student');

$mysqli->set_charset('utf8');

$sql ="select class,count(*) count from v_article_pro group by class having count(*)>1";

$result = $mysqli->query($sql);

$datas=$result->fetch_all(MYSQLI_ASSOC);

$result->free();

$classes=['classes'=>$datas];

echo json_encode($classes);

?>