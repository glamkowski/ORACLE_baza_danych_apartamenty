-- DODAWANIE REZERWACJI:
/* (UZYTKOWNIK*) (APARTAMENT*) (KLIENT*) [PARKING] (PRZYJAZD*) (ODJAZD*) */
exec overload_dodaj_rezerwacje.dodaj_rezerwacje (1, 15, 1, '21-03-2021', '23-03-2021');

select * from i5_rezerwacja;

-- USUWANIE REZERWACJI GDZIE DATA ODJAZDU JEST < CURRENT
exec zwolnij_wolne_apartamenty;

-- DQL
SELECT "ID AP", "Nazwa budynku", "Osoby", upper("Standard"), STATUS, CENA, NAZWA 
FROM pokaz_apartamenty WHERE status = 'DOSTÊPNY';

SELECT "ID AP", "Nazwa budynku", "Osoby", upper("Standard"), STATUS, CENA, NAZWA 
FROM pokaz_apartamenty WHERE status = 'ZAJÊTY';

select * from pokaz_apartamenty;

select NAZWA_BUDYNKU from pokaz_apartamenty;

-----------------------
-- Wyœwietl wszystkich dostêpnych u¿ytkowników
SELECT * FROM all_users;
-- Stwórz nowego u¿ytkownika Oskar, który ma hasolo lolek142
CREATE USER oskar IDENTIFIED BY lolek142;

select * from i5_apartament;

select * from i5_miejsce_parkingowe;

SELECT * FROM pokaz_parking_budynek;

select * from i5_klient;

-- SELECTOWANIE WIDOKÓW STATYSTYK
select * from srednia_cena_ap;
select * from najwyzsza_cena_ap;
select * from ilosc_uzytkownikow;
select * from ilosc_apartamentow;
select * from ilosc_budynkow;

select * from i5_news;


