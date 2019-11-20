<!Doctype html>
<html>
	<head>
		<title>Strona z dupy wzięto.</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="./js/jquery.cleditor.css" />
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="./js/jquery.cleditor.min.js"></script>
		<script>
			$(document).ready(function () { $("#cle").cleditor(); });
		</script>
	</head>
	<body>
	<center>
	<table width="90%" style="border:1px solid black;">
		<tr><td colspan="2">Nagłówek</td></tr>
		<tr>
			<td width="150px">..:Menu:..<hr />
				<?php
					include('menu.php');
					include('login.php');
					include('stat.php');
				?>
			</td>
			<td>
				<?php
					include('./teksty/'.$strona);
				?>
				</td>
		</tr>
		<tr><td colspan="2">Stopka</td></tr>
	</table>
	</center>
	</body>
</html>