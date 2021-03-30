-- WIDOK nr.1 Wyswietl wszystkie wolne oraz zajete apartamenty i miejscowosci
CREATE OR REPLACE VIEW pokaz_apartamenty
AS
SELECT
apa.id as "ID AP",
bud.nazwa as "Nazwa budynku",
oso.ilosc as "Osoby",
sta.nazwa as "Standard",
pokaz(apa.status) as Status,
apa.cena,
lok.nazwa
FROM i5_apartament apa
INNER JOIN i5_budynek bud ON apa.budynek = bud.id
INNER JOIN i5_standard sta ON apa.standard = sta.id
INNER JOIN i5_osoby oso ON apa.osoby = oso.id
INNER JOIN i5_lokalizacja lok ON bud.lokalizacja = lok.id
ORDER BY "Nazwa budynku";
/