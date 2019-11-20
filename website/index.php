<?php
session_start();
$start_time = microtime();
$link = @mysqli_connect('localhost','strona','strona123.','strona');

if (!$link){
	echo(mysqli_connect_error());
	die();
}
$ip = $_SERVER['REMOTE_ADDR'];

if (isset($_POST['logout'])){
	mysqli_query($link,"INSERT INTO log_log (user, ip, akcja) VALUES ('$_SESSION[login]','$ip','logout' )");
	unset($_SESSION['user_type']);
	unset($_SESSION['login']);
}


if (isset($_POST['login'])){
	$user = mysqli_fetch_assoc(mysqli_query($link,"SELECT * FROM users WHERE user='$_POST[user]'"));
	if ($user['pass']==crypt($_POST['pass'],$user['pass'])){
		//var_dump($_SERVER);
		mysqli_query($link,"INSERT INTO log_log (user, ip, akcja) VALUES ('$user[user]','$ip','login' )");
		$_SESSION['login'] = $user['user'];
		$_SESSION['user_type'] = $user['type'];
	} else {
		mysqli_query($link,"INSERT INTO log_log (user, ip, akcja) VALUES ('$user[user]','$ip','error' )");
		echo('NIE OK');
	}
}


if (isset($_GET['strona'])){
	$strona = $_GET['strona'].'.html';
} else {
	$strona = 'news.html';
}

include('template.php');
mysqli_close($link);
$stop_time = microtime();
$time = $stop_time-$start_time;
echo('czas generowania strony wynosi: '.$time);

?>