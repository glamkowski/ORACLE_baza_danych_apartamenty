<footer>
<div id="stopka">
<a class="afooter">@2021 - Wykonał Oskar Glamkowski</a>
<?php 
if (isset($_SESSION['login']) || isset($_SESSION['dowod'])) {
    echo '<a class="afooter2" href="wyloguj.php">Wyloguj</a>';
}
else {
    echo '<a class="afooter2" href="logowanie-admin.php">Zaloguj się jako admin</a>';
}
?>
</div>
</footer>