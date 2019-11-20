<?php
$ses_id = session_id();
$time = time();
$prev_time = $time-60*5;
mysqli_query($link,"DELETE FROM stat WHERE time<'$prev_time'");

if (isset($_SESSION['login'])){
	$login=1;
} else {
	$login=0;
}
if (mysqli_num_rows(mysqli_query($link,"SELECT * FROM stat WHERE ses_id='$ses_id'"))==0){
	mysqli_query($link,"INSERT INTO stat (ses_id, time) VALUES ('$ses_id', '$time')");
} else {
	mysqli_query($link,"UPDATE stat SET time='$time', login='$login' WHERE ses_id='$ses_id'");
}
?>


<fieldset><legend>Statystyki strony</legend>
<?php
$ile_gosci = mysqli_num_rows(mysqli_query($link,"SELECT * FROM stat WHERE login='0'"));
$ile_users = mysqli_num_rows(mysqli_query($link,"SELECT * FROM stat WHERE login='1'"));
echo("Aktualnie na stronie:<br />
		- $ile_gosci gości<br />
		- $ile_users zalogowanych<br />");
$status = mysqli_fetch_assoc(mysqli_query($link,"SHOW TABLE STATUS LIKE 'stat'"));
echo("- $status[Auto_increment] odwiedziny");
?>
</fieldset>