<?php
include 'include/db_connect.php';
include 'include/functions.php';
// Include database connection and functions here.
sec_session_start();
if(login_check($mysqli) == true) {
 
	include 'include/template.php'; //template engine includen
	$Tpl = new TemplatePower('template/basic.tpl');	// template file laden
	$Tpl->AssignInclude("HEADER", "template/header.tpl");
	$Tpl->AssignInclude("FOOTER", "template/footer.tpl");
	$Tpl->prepare(); // template object voorbereiden
	$Tpl->assign("CLASS4", ' class="active"');


	$Tpl->PrintToScreen(); // templaten parsen en tonen
} else {
   header('Location: ./login.php?error=2');
}
?>