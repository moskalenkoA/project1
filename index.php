<?php
require_once('templates/top.php');
if($_GET['url']){
$file = $_GET['url'];
}
else{
$file = 'glavn';}
$query="SELECT * FROM $tbl_maintext WHERE url = '$file'";
$adr=mysql_query($query);

if(!$adr)
{
exit($query);
}

$news=mysql_fetch_array($adr);
?>

<h1><?php echo $news['name'];?></h1>

<div class='maintext'><?php echo $news['body'] ?></div>

<div align=center><img src="media/img/image.jpg"/></div>


<?php
require_once('templates/bottom.php');
?>