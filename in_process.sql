-- DODAWANIE REZERWACJI:
/* (APARTAMENT) (KLIENT) [PARKING] (PRZYJAZD) (ODJAZD) */
exec overload_dodaj_rezerwacje.dodaj_rezerwacje (1, 9, 1, 10, '21-03-2021', '23-03-2021');

-- USUWANIE REZERWACJI GDZIE DATA ODJAZDU JEST < CURRENT
exec zwolnij_wolne_apartamenty;