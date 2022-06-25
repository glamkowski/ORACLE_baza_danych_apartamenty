
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
foreach ($_SESSION as $key => $value) {

    if ($value == 1) {
        $value = 'Użytkownik';
    }

    if ($key == 'dowod') {
        $value = substr($value, 7); 
        $value = '*********'.$value;
    }

    echo '<tr class="trprofil"><td class="ptd">'.ucfirst($key).'</td>'.'<td class="ptd">'.$value.'</td>'.'</tr>';
}

echo '<tr><td class="ptd" colspan="2">Edytuj swoje dane</td>';


echo '</table>';


?>


</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>