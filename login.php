<?php
include 'include/template.php'; //template engine includen

$Tpl = new TemplatePower('template/login.tpl');	// template file laden
$Tpl->prepare(); // template object voorbereiden

if(isset($_GET['error']) && $_GET['error'] == "1") { 
   $Tpl->newBlock('LOGINERROR');
   $Tpl->assign("ERROR_MSG", "Fout bij inloggen!");
   $Tpl->assign("ERROR_TYPE", "Fout");
}
if(isset($_GET['error']) && $_GET['error'] == "2") { 
   $Tpl->newBlock('LOGINERROR');
   $Tpl->assign("ERROR_MSG", "U bent niet geauthoriseerd om deze pagina te bekijken. Gelieve in te loggen!");
   $Tpl->assign("ERROR_TYPE", "Fout");
}
if(isset($_GET['error']) && $_GET['error'] == "3") { 
   $Tpl->newBlock('LOGINERROR');
   $Tpl->assign("ERROR_MSG", "U bent afgemeld!");
   $Tpl->assign("ERROR_TYPE", "Let op");
}

$Tpl->PrintToScreen(); // templaten parsen en tonen
?>