<header>
  <div id="naglowek_1b">

    <?php
session_start();

if (!isset($_SESSION['login']) && !isset($_SESSION['dowod']) ) {
  echo '
  <form class="form_logowanie" action="logowanie.php?login=klient" method="POST">
  <input name="login" class="input_log1" type="text" id="fname" placeholder="E-mail..." value="admin" name="login"><br>
  <input name="haslo" class="input_log1" type="password" id="lname" placeholder="Hasło..." value="admin" name="haslo"></br>
  <input class="button_log1" type="submit" value="Zaloguj się">
  </form>
  ';
}
else {
  if (isset($_SESSION['dowod'])) {
    echo '<ul class="welcome">';
    echo '<li>'.'Zalogowany jako: '.$_SESSION['imie'].' '.$_SESSION['nazwisko'].'</li>';
    echo '</ul>';
  }
  else {
  echo '<ul class="welcome">';
  echo '<li>'.'Zalogowany jako: '.$_SESSION['imie'].' '.$_SESSION['nazwisko'].'</li>';
  echo '<li>'.$_SESSION['email'].'</li>';
  echo '</ul>';

  echo '<ul class="admin_panel2">';
  echo '<li class="admin_panel3"><a href="dodaj_uzytkownika.php" class="admin_panel_link">Dodaj Użytkownika</a></li>';
  echo '<li class="admin_panel3"><a href="status_ap.php" class="admin_panel_link">Wolne apartamenty</a></li>';
  echo '<li class="admin_panel3"><a href="status_zap.php" class="admin_panel_link">Zajęte apartamenty</a></li>';
  echo '<li class="admin_panel3"><a href="dodaj_klienta_0.php" class="admin_panel_link">Dodaj Klienta</a></li>';
  echo '</ul>';

  echo '<ul class="admin_panel2">';
  echo '<li class="admin_panel3"><a href="dodaj_news.php" class="admin_panel_link">Dodaj Nowość</a></li>';
  echo '<li class="admin_panel3"><a href="statystyki.php" class="admin_panel_link">Statystyki</a></li>';
  echo '<li class="admin_panel3"><a href="#" class="admin_panel_link">link_1</a></li>';
  echo '<li class="admin_panel3"><a href="#" class="admin_panel_link">link_2</a></li>';
  echo '</ul>';
  }
}
?>

    <div id="pojemnik_logo">
      <a class="logo_a" href="#">
        <img class="logo" src="img/logo_apartamenty.png" width="182px" height="152px"></img>
      </a>
    </div>

    <?php
  if (!isset($_SESSION['login'])) {
    if (isset($_GET['failed-login'])) {
      echo '<a class="e-login2">Błędne dane logowania!</a>';
    }
}
?>

  </div>
</header>