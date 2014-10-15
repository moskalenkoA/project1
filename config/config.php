<?php
$dblocation='localhost';
$dbname='baza';
$dbuser='root';
$dbpass='';
//таблица
$tbl_maintext='maintext';
$tbl_user='users';
$db= mysql_connect($dblocation,$dbuser,$dbpass);


    if(!$db)
	{
	exit('сервер базы данных недоступен');
	}

	$dbmy=mysql_select_db($dbname,$db);
	if (!$dbmy)
	{
	exit('база данных недоступна');
	}

	mysql_query("SET NAMES 'utf8'");