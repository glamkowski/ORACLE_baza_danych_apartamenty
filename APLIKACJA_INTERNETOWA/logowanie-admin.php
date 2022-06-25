<?php

?>

<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta description="Twoje miejsce do zamieszkania.">
    <link rel="stylesheet" href="styles.css?v=6.0">
    <title>Apartamenty</title>
</head>
<body>
<div id="pojemnik">

<header>
<div id="naglowek_1b">
<div id="pojemnik_logo">
<a class="logo_a" href="#">
<img class="logo" src="img/logo_apartamenty.png" width="182px" height="152px"></img>
</a>
</div>
</div>
</header>

<?php require('nawigacja.php') ?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Logowanie do panelu admina</a></div>

<?php


?>

<div id="logowanieadmin">
    
<form class="form_logowanie" action="logowanie.php?login=user" method="post">
  <input class="input_log1" type="text" id="afname" placeholder="E-mail..." value="admin" name="login"><br>
  <input class="input_log1" type="password" id="alname" placeholder="Hasło..." value="admin" name="haslo"></br>
  <input class="button_log1" type="submit" value="Zaloguj się">
  <?php
if (!isset($_SESSION['login'])) {
    if (isset($_GET['failed-login'])) {
      echo '<a class="e-login">Błędne dane logowania!</a>';
    }
}
?>
</form>
</div>



</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>