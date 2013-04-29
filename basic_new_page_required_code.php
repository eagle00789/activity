<?php
include 'include/db_connect.php';
include 'include/functions.php';
// Include database connection and functions here.
sec_session_start();
if(login_check($mysqli) == true) {

// Hier komt code te staan voor deze pagina

} else {
   header('Location: ./login.php?error=2');
}
?>