<html>
<head>
	<title>login</title>
	<script type="text/javascript" src="include/sha512.js"></script>
	<script type="text/javascript" src="include/forms.js"></script>
</head>
	
<body>
	test via template engine
	<form action="process_login.php" method="post" name="login_form">
	Email: <input type="text" name="email" /><br />
	Password: <input type="password" name="password" id="password"/><br />
	<input type="button" value="Login" onclick="formhash(this.form, this.form.password);" />
	</form>
</body>

</html>

