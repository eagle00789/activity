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
	$Tpl->AssignInclude("MAINBODY", "template/about.tpl");
	$Tpl->prepare(); // template object voorbereiden
	$Tpl->assign("COUNTER_LINES", array_sum(countLines(dirname(__FILE__), array('php', 'js', 'tpl', 'css'))));


	$Tpl->PrintToScreen(); // templaten parsen en tonen
} else {
   header('Location: ./login.php?error=2');
}
?>