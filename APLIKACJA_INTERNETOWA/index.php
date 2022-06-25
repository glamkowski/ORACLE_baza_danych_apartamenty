<?php include_once('baza_cfg.php'); ?>

<?php

?>

<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta description="Twoje miejsce do zamieszkania.">
    <link rel="stylesheet" href="styles.css?v=7.0">
    <title>Apartamenty</title>
</head>
<body>
<div id="pojemnik">

<?php require('header.php') ?>

<?php require('nawigacja.php') ?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Nowości</a></div>

<?php

try {
    $polacz = new PDO($db,$user,$pass);
}
catch (Exception $e) {
    echo "Problem z połączniem bazy danych!";
}

    $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    try {

    $sql = $polacz->query("SELECT * FROM i5_news");

    }
    catch (Exception $e) {
        echo "Problem z zapytaniem SQL";
    }

    foreach ($sql as $key => $value) {

        echo '<div class="post">';
        echo '<h1 class="h1post">'.$value[1].'</h1>';
        echo '<p class="ppost">'.$value[2].'</p>';
        echo '<ul class="ultaskbar">';
        echo '<li class="litaskbar"><a class="ali">Dodano: 03-01-20221</a></li>';
        echo '<li class="litaskbar"><a class="ali" href="#">Edytuj</a></li>';
        echo '<li class="litaskbar"><a class="ali" href="usuwanie_posta.php?usun='."$value[0]";
        echo '">Usuń</a></li>';
        echo '</ul>';
        echo '</div>';
    }

?>



<!-- NEWS -->
<!-- <div class="post">
<h1 class="h1post">Przykładowa tresc</h1>
<p class="ppost">
"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain an happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those wh
</p>
<ul class="ultaskbar">
<li class="litaskbar"><a class="ali">Dodano: 03-01-20221</a></li>
<li class="litaskbar"><a class="ali" href="#">Edytuj</a></li>
<li class="litaskbar"><a class="ali" href="#">Usuń</a></li>
</ul>
</div> -->
<!-- END NEWS -->




<!-- NEWS -->
<!-- <div class="post">
<h1 class="h1post">Przykładowa tresc</h1>
<p class="ppost">
"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain an happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those wh
</p>
<ul class="ultaskbar">
<li class="litaskbar"><a class="ali">Dodano: 03-01-20221</a></li>
<li class="litaskbar"><a class="ali" href="#">Edytuj</a></li>
<li class="litaskbar"><a class="ali" href="#">Usuń</a></li>
</ul>
</div> -->



</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>