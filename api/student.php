<?php
$ProID=$_GET["ProID"];
$ClassID=$_GET["ClassID"];
$StuName=$_GET["StuName"];

$mysqli = new mysqli('localhost','root','991314','student');

$mysqli->set_charset('utf8');

$where="";
if($ProID!="0"){$where.=" and ProID={$ProID}";}
if($ClassID!="0"){$where.=" and ClassID={$ClassID}";}
if($StuName!="0"){$where.=" and StuName like '%{$StuName}%'";}

$sqlcount ="select count(distinct(ClassName)) as clacout from v_stu_class_pro where StudentID>0{$where}";

$arr = $mysqli->query($sqlcount);

$clacout=$arr->fetch_all(MYSQLI_ASSOC);

$sql ="select ClassName,stuNo as studenId,stuName as name,IDCard as ID from v_stu_class_pro where StudentID>0{$where}";

$result = $mysqli->query($sql);

$datas=$result->fetch_all(MYSQLI_ASSOC);

$result->free();

$mysqli->close();

$students=[
'cname'=>count($datas)>0 && $clacout[0]['clacout']=='1'?$datas[0]['Classname']:'',
'student'=>$datas
];

echo json_encode($students);

?>