<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Activiteiten</title>
	<meta name="viewport" content="width=device-width">
	<script type="text/javascript" src="include/js/sha512.js"></script>
	<script type="text/javascript" src="include/js/forms.js"></script>
	<script src="include/js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			if ($.browser.msie && $.browser.version.substr(0,1)<7)
			{
				$('li').has('ul').mouseover(function(){
					$(this).children('ul').css('visibility','visible');
				}).mouseout(function(){
				$(this).children('ul').css('visibility','hidden');
				})
			}
			/* Mobile */
			$('#menu-wrap').prepend('<div id="menu-trigger">Menu</div>');		
			$("#menu-trigger").on("click", function(){
				$("#menu").slideToggle();
			});
			// iPad
			var isiPad = navigator.userAgent.match(/iPad/i) != null;
			if (isiPad) $('#menu ul').addClass('no-transition');      
		});
	</script>
	<link href="/template/css/style.css" rel="stylesheet" type="text/css" />
</head>
	
<body>
<nav id="menu-wrap">
<ul id="menu">
	<li><a href="index.php">Begin</a></li>
	<li><a href="#">Leden</a></li>
	<li><a href="#">Activiteiten</a></li>
	<li><a href="logout.php">Afmelden</a></li>
	<li><a href="about.php">Over...</a></li>
</ul>
</nav>
