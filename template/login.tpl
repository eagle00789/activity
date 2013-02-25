<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>login</title>
	<script type="text/javascript" src="include/sha512.js"></script>
	<script type="text/javascript" src="include/forms.js"></script>
	<link href="/template/css/style.css" rel="stylesheet" type="text/css" />
</head>
	
<body>
	<div class="login_form_wrapper">
		<form action="process_login.php" method="post" name="login_form">
			<table class="login_form">
				<tr>
					<td class="logo" colspan="2"><img src="/template/img/logo.png" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" id="password"/></td>
				</tr>
				<tr>
					<td><input type="button" value="Login" onclick="formhash(this.form, this.form.password);" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>

</html>

