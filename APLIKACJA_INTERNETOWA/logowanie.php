<?php
require('baza_cfg.php');

session_start();

if (!isset($_GET['login']) || $_GET['login'] != 'user' && $_GET['login'] != 'klient') {
    echo 'Loowanie nie powidoło sie!';
}
elseif ($_GET['login'] == 'user') {
    echo 'Próba logowania jako użytkownik</br>';
    if (isset($_POST['login']) && isset($_POST['haslo'])) {
        try {
        $polacz = new PDO($db, $user, $pass);
        $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $zapytanie = $polacz->prepare('SELECT * FROM i5_uzytkownik where login=? AND haslo=?');
        $zapytanie->execute([$_POST['login'], $_POST['haslo']]);
        $wynik = $zapytanie->fetch(PDO::FETCH_ASSOC);

        $polacz=null;

        }
        catch (PDOException $xe) {
            echo 'Problem z połączniem z bazą danych!</br>';
        }
        if ($wynik) {
            echo 'Zalogowano pomyślnie</br>';
            echo '<th></th></br>';
            $_SESSION['id'] = $wynik['ID'];
            $_SESSION['login'] = $wynik['LOGIN'];
            $_SESSION['email'] = $wynik['EMAIL'];
            $_SESSION['imie'] = $wynik['IMIE'];
            $_SESSION['nazwisko'] = $wynik['NAZWISKO'];
            $_SESSION['uprawnienia'] = $wynik['UPRAWNIENIA'];
            if (!isset($_SESSION['uprawnienia'])) {
            $_SESSION['uprawnienia'] = 'Brak przyznanych uprawnień';
            }

            foreach ($_SESSION as $key => $value) {
                echo $value."</br>";
            }
            header('Location: index.php');
            $wynik = null;
        }
        else {
            echo "Niepoprawny login lub hasło</br>";
            if (!isset($_SESSION['login'])) {
                header('Location: logowanie-admin.php?failed-login=1');
            }
            else {
                header('Location: logowanie-admin.php');
            }
        }
    }
}
elseif ($_GET['login'] == 'klient') {
    echo 'Logowanie jako klient</br>';

    if (isset($_POST['login']) && isset($_POST['haslo'])) {
        $con2 = new PDO($db, $user, $pass);
        $sql = $con2->prepare('SELECT * FROM i5_klient WHERE nazwisko=? AND dowod=?');
        $sql->execute([$_POST['login'], $_POST['haslo']]);
        $wynik = $sql->fetch(PDO::FETCH_ASSOC);

        if ($wynik) {
                $_SESSION['imie'] = $wynik['IMIE'];
                $_SESSION['nazwisko'] = $wynik['NAZWISKO'];
                $_SESSION['dowod'] = $wynik['DOWOD'];
                foreach ($wynik as $key => $value) {
                    echo $value;
                }
                header('Location: index.php');
                $con2 = null;
                $wynik = null;
        }
        else {
            echo 'Podano niepoprawne dane!</br>';
            header('Location: index.php?failed-login=1');
        }
    }
    else {
        echo 'Nie podano danych</br>';
    }


}
?>