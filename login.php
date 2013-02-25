<?php
include 'include/template.php'; //template engine includen

$Tpl = new TemplatePower('template/login.tpl');	// template file laden
$Tpl->prepare(); // template object voorbereiden

if(isset($_GET['error'])) { 
   echo 'Error Logging In!';
}

$Tpl->PrintToScreen(); // templaten parsen en tonen
?>