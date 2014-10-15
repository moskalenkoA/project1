<?php
require_once('templates/top.php');
$name = new field_text('name',"Логин",true,$_POST['name']);
$pass = new field_password('pass',"Пароль",true,$_POST['pass']);
$passy = new field_password('passy',"Повтор пароля",true,$_POST['passy']);
$email = new field_text_email('email',"E-mail",true,$_POST['email']);
$form = new form(array('name'=>$name, 'pass'=>$pass,'passy'=>$passy, 'email'=>$email), 'Регистрация','field');
if ($_POST){
	$error = $form->check();
	if ($form->fields['pass']->value != $form->fields['passy']->value){
	$error[] = 'Пароль не совпадает';}
	
	$query = "SELECT COUNT(*) FROM $tbl_user WHERE login = '{$form->fields['name']->value}'";
	$usr = mysql_query($query);
	if(!$usr){
	exit($query);}
	if(mysql_result($usr,0)){ $error[]="Пользователь с таким именем уже существует." ;}
	if (!$error){
		$query = "INSERT INTO $tbl_user VALUES (Null, '{$form->fields['name']->value}','{$form->fields['pass']->value}','{$form->fields['email']->value}',NOW(),NOW(),'unblock')";

		$adr = mysql_query($query);
		if(!$adr) {
		exit($query);
		}
?>
		   <script>
           document.location.href = 'index.php';
           </script>
<?php
	}
	if ($error){
		foreach ($error as $err){
		echo "<span style = 'color:red'>";
		echo $err;
		echo "<span><br/>";
		}
	}

}
$form->print_form();
require_once('templates/bottom.php');
?>

