-- WIDOK nr.1 Wyswietl wszystkie wolne oraz zajete apartamenty i miejscowosci
CREATE OR REPLACE VIEW pokaz_apartamenty
AS
SELECT
apa.id as id_ap,
bud.nazwa as Nazwa_budynku,
oso.ilosc as osoby,
sta.nazwa as Standard,
pokaz(apa.status) as Status,
apa.cena,
lok.nazwa
FROM i5_apartament apa
INNER JOIN i5_budynek bud ON apa.budynek = bud.id
INNER JOIN i5_standard sta ON apa.standard = sta.id
INNER JOIN i5_osoby oso ON apa.osoby = oso.id
INNER JOIN i5_lokalizacja lok ON bud.lokalizacja = lok.id
ORDER BY Nazwa_budynku;

/

-- WIDOK ŒREDNIEJ CENY APARTAMENTÓW
CREATE VIEW srednia_cena_ap AS
select ROUND(AVG(cena), 2) AS srednia_cena from i5_apartament;

/

-- WIDOK NAJWYZSZA CENA PARTAMENTU
CREATE OR REPLACE VIEW najwyzsza_cena_ap AS
select ROUND(MAX(cena), 2) as najwyzsza_cena from i5_apartament;

/

-- WIDOK NAJNIZSZA CENA PARTAMENTU
CREATE OR REPLACE VIEW najnizsza_cena_ap AS
select ROUND(MIN(cena), 2) as najnizsza_cena from i5_apartament;

/

-- WIDOK ILOSC UZYTKOWNIKOW
CREATE OR REPLACE VIEW ilosc_uzytkownikow AS
select COUNT(id) as ilosc_uzytkownikow from i5_klient;

/

-- WIDOK ILOSC APARTAMENTOW
CREATE OR REPLACE VIEW ilosc_apartamentow AS
select COUNT(id) as ilosc_apartamentow from i5_apartament;

/

-- WIDOK ILOSC BUDYNKOW
CREATE OR REPLACE VIEW ilosc_budynkow AS
select COUNT(id) as ilosc_budynkow from i5_budynek;

/

-- POKA¯ PARKINGI BUDYNKÓW
CREATE OR REPLACE VIEW pokaz_parking_budynek AS
SELECT i5_miejsce_parkingowe.id, i5_miejsce_parkingowe.kod, i5_budynek.nazwa, i5_miejsce_parkingowe.status FROM i5_miejsce_parkingowe  
INNER JOIN i5_budynek ON i5_budynek.id = i5_miejsce_parkingowe.budynek;
