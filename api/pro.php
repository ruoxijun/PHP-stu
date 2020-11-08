<?php
$mysqli = new mysqli('localhost','root','991314','student');

$mysqli->set_charset('utf8');

$sql ="select ProID as id , ProName as name from t_pro";

$result = $mysqli->query($sql);

$datas=$result->fetch_all(MYSQLI_ASSOC);

$result->free();

$pro=['pro'=>$datas];

echo json_encode($pro);

?>