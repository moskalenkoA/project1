<?php
require_once('templates/top.php');
$name = new field_text('name',"Логин",true,$_POST['name']);
$pass = new field_password('pass',"Пароль",true,$_POST['pass']);

$form = new form(array('name'=>$name, 'pass'=>$pass), 'Вход','field');


	
$form->print_form();
require_once('templates/bottom.php');
?>