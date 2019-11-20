<?php
if (isset($_POST['register'])){
	if (strlen($_POST['user'])<=10){
		if ($_POST['pass1']==$_POST['pass2']){
			$pass = crypt($_POST['pass1']);
			mysqli_query($link,"INSERT INTO users (user, pass, email) VALUES ('$_POST[user]','$pass','$_POST[email]')");
			if (mysqli_errno($link)==1062){echo('Taki user juz jest!! głąbie.');}
		} else echo('Hasła nie zgadzają sie');
	} else echo('User jest powyżej 10 znaków');
}

if (!isset($_SESSION['login'])){
	if (!isset($_GET['register'])){
		echo('
		<fieldset><legend>Logowanie</legend>
			<form action="index.php" method="POST">
				<input type="text" name="user" placeholder="Username" /><br />
				<input type="password" name="pass" placeholder="Password" /><br />
				<input type="submit" value="Zaloguj" name="login" /><br />
				Jeśli nie masz konta to <a href="?register=1">zarejestruj sie</a>.
			</form>
		</fieldset>');
	}

	if (isset($_GET['register']) AND $_GET['register']==1){
		echo('
		<fieldset><legend>Rejestracja</legend>
			<form action="index.php" method="POST">
				<input type="text" name="user" placeholder="Username" required/><br />
				<input type="password" name="pass1" placeholder="Password" required/><br />
				<input type="password" name="pass2" placeholder="Re-Password" required/><br />
				<input type="email" name="email" placeholder="Adres e-mail" required/><br />
				<input type="submit" value="Zarejestruj" name="register" /><br />
			</form>
		</fieldset>');
	}
} else {
		echo('
		<fieldset><legend>Wyloguj</legend>
			<form action="index.php" method="POST">
				<input type="submit" value="Wyloguj" name="logout" />
			</form>
		</fieldset>');
}
	

?>

