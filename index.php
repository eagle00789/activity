<?php
include 'include/functions.php';
// Include database connection and functions here.
sec_session_start();
if(login_check($mysqli) == true) {
 
   // Add your protected page content here!
 
} else {
   header('Location: ./login.php?error=2');
}
?>