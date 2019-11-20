<ul id="menu">
	<li><a href="?strona=news">Aktualności</a></li>
<?php
$query = mysqli_query($link,"SELECT id, tytul FROM strony WHERE publikacja=1");

while ($dana = mysqli_fetch_assoc($query)){
	echo('<li><div><a href="?strona=strony&id='.$dana['id'].'">'.$dana['tytul'].'</a></div>');
	$childquery = mysqli_query($link,"SELECT id, tytul FROM childstrony WHERE publikacja=1 and parentid=".$dana['id']."");
	echo "<ul>";
		while ($childdana = mysqli_fetch_assoc($childquery)){
			echo('<li><div><a href="?strona=childstrony&id='.$childdana['id'].'">'.$childdana['tytul'].'</a></div></li>');
		}
		echo "</ul>";
		echo "</li>";
}
?>
	<li><a href="?strona=kontakt">Kontakt</a></li>
	<li><a href="?strona=ksiega">Księga gości</a></li>
</ul>

<?php
if (isset($_SESSION['login'])){
	if ($_SESSION['user_type']=="a"){
		echo('	Witaj '.$_SESSION['login'].'<ul>
					<h4>Panel Admina</h4>
					<li><div><a href="?strona=admin_news">Aktualności</a></div></li>
					<li><div><a href="?strona=admin_strony">Strony</a></div></li>
					<li><div><a href="?strona=admin_users">Użytkownicy</a></div></li>
					<li><div><a href="?strona=admin_cenzura">Cenzor</a></div></li>
					<li><div><a href="?strona=admin_logi">Logi</a></div></li>
				</ul>');
	}
}

if (isset($_SESSION['login'])){
	echo('	Witaj '.$_SESSION['login'].'<ul>
				<li><a href="?strona=profil">Profil</a></li>
			</ul>');
}

?>
<script src="js/jquery.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<script>
$( function() {
    $( "#menu" ).menu();
  } );
</script>
<style>
	.dropdown{ 
		visibility: hidden;
	}
	
  .ui-menu { width: 150px; }
  
</style>