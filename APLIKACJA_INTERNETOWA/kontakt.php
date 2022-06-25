
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


?>

<?php require('nawigacja.php') ?>

<?php


?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Formularz kontaktowy</a></div>




<table class="rezerwacja_s">
<form method="POST" action="#">
<tr> <td><label>Imię</label></td> <td><input name="dodawany_tytul" type="text"></input></td> </tr>
<tr> <td><label>Nazwisko</label></td> <td><input name="dodawany_tytul" type="text"></input></td> </tr>
<tr> <td><label>Telefon</label></td> <td><input name="dodawany_tytul" type="text"></input></td> </tr>
<tr> <td><label>E-mail</label></td> <td><input name="dodawany_tytul" type="text"></input></td> </tr>
<tr> <td><label>Wiadomość</label></td> <td><textarea class="pole_tekstowe" name="dodawany_tresc"></textarea></td> </tr>
 </tr>
<tr>
    <td>
</td>
<td>
<input class="button_send" type="submit" value="Wyślij">

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