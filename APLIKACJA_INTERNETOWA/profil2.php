
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

<?php require('header.php');
if (!isset($_SESSION['login']) && !isset($_SESSION['dowod'])) {
    header('Location: index.php');
}
else {
    
}
?>

<?php require('nawigacja.php') ?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Profil</a></div>
<?php
echo '<table class="tabledane">';
echo '<tr><td class="ptd" colspan="2"><b>Dane:</b></td></tr>';
echo '<tr class="trprofil"><td class="ptd">'.ucfirst('ID').'</td>'.'<td class="ptd">'.'Użytkownik'.'</td>'.'</tr>';
echo '<tr class="trprofil"><td class="ptd">'.ucfirst('Login').'</td>'.'<td class="ptd">'.$_SESSION['login'].'</td>'.'</tr>';
echo '<tr class="trprofil"><td class="ptd">'.ucfirst('E-mail').'</td>'.'<td class="ptd">'.$_SESSION['email'].'</td>'.'</tr>';
echo '<tr class="trprofil"><td class="ptd">'.ucfirst('Imię').'</td>'.'<td class="ptd">'.$_SESSION['imie'].'</td>'.'</tr>';
echo '<tr class="trprofil"><td class="ptd">'.ucfirst('Nazwisko').'</td>'.'<td class="ptd">'.$_SESSION['nazwisko'].'</td>'.'</tr>';
echo '<tr class="trprofil"><td class="ptd">'.ucfirst('Uprawnienia').'</td>'.'<td class="ptd">'.$_SESSION['uprawnienia'].'</td>'.'</tr>';

echo '<tr><td class="ptd" colspan="2">Edytuj swoje dane</td>';


echo '</table>';


?>


</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>