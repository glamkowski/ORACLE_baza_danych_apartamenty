<?php
include_once('baza_cfg.php');
session_start();

if (isset($_SESSION['login']) && isset($_SESSION['uprawnienia'])) {
    if ($_SESSION['uprawnienia'] == 1) {
        if (empty($_SESSION['f_przyjazd']) || empty($_SESSION['f_odjazd'])) {
            echo 'Nie podano daty przyjazdu lub odjazdu';
        }
        else {
            $id = intval($_SESSION['id']);
            $apartament = intval($_SESSION['f_apartament_id']);
            $klient = intval($_SESSION['f_id_klient']);

            $przyjazd = date("d-m-Y", strtotime(strval($_SESSION['f_przyjazd'])));  
            $odjazd = date("d-m-Y", strtotime(strval($_SESSION['f_odjazd'])));
    
            $conn = new PDO($db, $user, $pass);
            $zapytanie = $conn->prepare('call overload_dodaj_rezerwacje.dodaj_rezerwacje (:id, :apartament, :klient,:przyjazd, :odjazd)');
    
            $zapytanie->bindParam(':id',$id,PDO::PARAM_INT);
            $zapytanie->bindParam(':apartament',$apartament,PDO::PARAM_INT);
            $zapytanie->bindParam(':klient',$klient,PDO::PARAM_INT);
            $zapytanie->bindParam(':przyjazd',$przyjazd,PDO::PARAM_STR, 10);
            $zapytanie->bindParam(':odjazd',$odjazd,PDO::PARAM_STR, 10);
    
            $zapytanie->execute();
    
            echo 'Dodano rezerwacje pomyślnie!';
            
            header('Location: dodano.php');
        }


    }
    else {
        echo 'Brak odpowiednich uprawnień!';
        header('Location: logowanie-admin.php');
    }
}
else {
    echo 'Nie jesteś zalogowany na odpowiednie konto!';
    header('Location: logowanie-admin.php');
}


?>