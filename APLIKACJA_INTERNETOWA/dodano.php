
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

<?php require('nawigacja.php') ?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar"></a></div>

<form method="GET" action="wybierz-ap.php">

<table class="rezerwacja_s">
<tr>
    <td colspan="2"><a>Dodano pomyślnie</a></td>

</tr>
<tr>
    <td>
<center>
    <form action="index.php">
    <a class="button_nosend" href="index.php" value="Dalej">Powrót</a>
    </form>
</center>
    </td>
    <td>
<center>
    <form action="dodaj-rezerwacje.php">
    <input class="button_send" type="submit" value="Dodaj kolejną"></input>
    </form>
</center>
    </td>
</tr>
</table>
</form>
</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>