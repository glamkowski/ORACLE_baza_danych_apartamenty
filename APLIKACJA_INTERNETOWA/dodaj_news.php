
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
if (!isset($_GET['dodano_news'])) {
}
elseif ($_GET['dodano_news'] == 1) {

echo '<a class="informacja_dodanie">';
echo "Dodano news pomyślnie!";
echo '</a>';
}
else {

}
?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Dodaj news</a></div>




<table class="rezerwacja_s">
<form method="POST" action="dodawanie_newsa.php">
<tr> <td><label>Tytuł</label></td> <td><input name="dodawany_tytul" type="text"></input></td> </tr>
<tr> <td><label>Wiadomość</label></td> <td><textarea class="pole_tekstowe" name="dodawany_tresc"></textarea></td> </tr>
 </tr>
<tr>
    <td>
</td>
<td>
<input class="button_send" type="submit" value="Dodaj news">

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