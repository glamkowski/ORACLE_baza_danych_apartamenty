-- DODAWANIE REZERWACJI:
/* (UZYTKOWNIK) (APARTAMENT) (KLIENT) [PARKING] (PRZYJAZD) (ODJAZD) */
exec overload_dodaj_rezerwacje.dodaj_rezerwacje (1, 13, 1, '21-03-2021', '23-03-2021');

-- USUWANIE REZERWACJI GDZIE DATA ODJAZDU JEST < CURRENT
exec zwolnij_wolne_apartamenty;
select * from i5_apartament;
-- WIDOK 1
CREATE OR REPLACE VIEW pokaz_wolne_ap
AS
SELECT
apa.id as "ID AP",
bud.nazwa as "Nazwa budynku",
oso.ilosc as "Osoby",
sta.nazwa as "Standard",
apa.status,
apa.cena,
lok.nazwa
FROM i5_apartament apa
INNER JOIN i5_budynek bud ON apa.budynek = bud.id
INNER JOIN i5_standard sta ON apa.standard = sta.id
INNER JOIN i5_osoby oso ON apa.osoby = oso.id
INNER JOIN i5_lokalizacja lok ON bud.lokalizacja = lok.id
WHERE
apa.status = 'D'
ORDER BY "Nazwa budynku";
/

CREATE OR REPLACE VIEW pokaz_zajete_ap
AS
SELECT
apa.id as "ID AP",
bud.nazwa as "Nazwa budynku",
oso.ilosc as "Osoby",
sta.nazwa as "Standard",
apa.status,
apa.cena,
lok.nazwa
FROM i5_apartament apa
INNER JOIN i5_budynek bud ON apa.budynek = bud.id
INNER JOIN i5_standard sta ON apa.standard = sta.id
INNER JOIN i5_osoby oso ON apa.osoby = oso.id
INNER JOIN i5_lokalizacja lok ON bud.lokalizacja = lok.id
WHERE
apa.status = 'Z'
ORDER BY "Nazwa budynku";

select * from i5_apartament;

select * FROM pokaz_wolne_ap;
select * FROM pokaz_zajete_ap;