
<?php include_once('baza_cfg.php'); ?>

<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta description="Twoje miejsce do zamieszkania.">
    <link rel="stylesheet" href="styles.css?v=8.0">
    <title>Apartamenty</title>
</head>
<body>

<div id="pojemnik">

<?php require('header.php') ?>

<?php

if (!isset($_SESSION['uprawnienia']) || !isset($_SESSION['login'])) {
    header('Location: index.php');
}
else {

}

?>

<?php require('nawigacja.php') ?>

<?php
if (!isset($_GET['dodano_uzytkownika'])) {
}
elseif ($_GET['dodano_uzytkownika'] == 1) {

echo '<a class="informacja_dodanie">';
echo "Dodano użytkownika pomyślnie!";
echo '</a>';
}
else {

}
?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Dodaj uzytkownika</a></div>




<table class="rezerwacja_s">
<form method="POST" action="f_dodawanie_uzytkownika.php">

<tr> <td><label>Login:</label></td> <td><input name="dodawany_login" type="text"></input></td> </tr>
<tr> <td><label>Hasło:</label></td> <td><input name="dodawany_haslo" type="text"></input></td> </tr>
<tr> <td><label>Email:</label></td> <td><input name="dodawany_email" type="text"></input></td> </tr>
<tr> <td><label>Telefon:</label></td> <td><input name="dodawany_telefon" type="text"></input></td> </tr>
<tr> <td><label>Imie:</label></td> <td><input name="dodawany_imie" type="text"></input></td> </tr>
<tr> <td><label>Nazwisko:</label></td> <td><input name="dodawany_nazwisko" type="text"></input></td> </tr>
<tr> <td><label>Uprawnienia:</label></td> <td><input name="dodawany_uprawnienia" type="text"></input></td> </tr>
<tr>
    <td>
</td>
<td>
<input class="button_send" type="submit" value="Dodaj użytkownika">

</td>
</tr>
</form>
</table>



</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>