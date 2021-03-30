-- DODAWANIE REZERWACJI:
/* (UZYTKOWNIK) (APARTAMENT) (KLIENT) [PARKING] (PRZYJAZD) (ODJAZD) */
exec overload_dodaj_rezerwacje.dodaj_rezerwacje (1, 13, 1, '21-03-2021', '23-03-2021');

-- USUWANIE REZERWACJI GDZIE DATA ODJAZDU JEST < CURRENT
exec zwolnij_wolne_apartamenty;

-- DQL
select * from pokaz_apartamenty WHERE status = 'DOSTÊPNY';
select * from pokaz_apartamenty WHERE status = 'ZAJÊTY';