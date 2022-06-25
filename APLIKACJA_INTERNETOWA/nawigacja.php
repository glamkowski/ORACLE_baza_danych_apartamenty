<nav>
<div id="nawigacja">
<ul class="nav_ul">
    <li class="nav_li"><a class="a_li" href="index.php">Nowości</a></li>
    <li class="nav_li"><a class="a_li" href="apartamenty.php">Apartamenty</a></li>
    <li class="nav_li"><a class="a_li" href="kontakt.php">KONTAKT</a></li>
    <?php
    if (isset($_SESSION['login']) || isset($_SESSION['dowod'])) {
        echo '<li class="nav_li"><a class="a_li" href="profil.php">Profil</a></li>';
    }
    if (isset($_SESSION['login']) || isset($_SESSION['uprawnienia'])) {
        echo '<li class="nav_li"><a class="a_li" href="dodaj-rezerwacje.php">Dodaj rezerwacje</a></li>';
    }
    ?>
</ul>
</div>
</nav>