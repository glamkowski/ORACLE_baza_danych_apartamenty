CREATE OR REPLACE PACKAGE overload_dodaj_rezerwacje
IS
    PROCEDURE dodaj_rezerwacje 
    (uzytkownik IN INTEGER, apartament IN INTEGER, klient IN INTEGER, przyjazd IN VARCHAR2, odjazd IN VARCHAR2);
    PROCEDURE dodaj_rezerwacje
    (uzytkownik IN INTEGER, apartament IN INTEGER, klient IN INTEGER, parking IN INTEGER, przyjazd IN VARCHAR2, odjazd IN VARCHAR2);
end;
/

CREATE OR REPLACE PACKAGE BODY overload_dodaj_rezerwacje
IS
    dni_pobytu INTEGER;
    dzien_przyjazdu INTEGER;
    dzien_odjazdu INTEGER;
    suma_oplat NUMBER(10,2);
    cena NUMBER(10,2);

PROCEDURE dodaj_rezerwacje
(uzytkownik IN INTEGER, apartament IN INTEGER, klient IN INTEGER, przyjazd IN VARCHAR2, odjazd IN VARCHAR2)
IS
begin
    SELECT cena INTO cena FROM i5_apartament WHERE id=apartament;
    dzien_przyjazdu:= EXTRACT(DAY FROM to_date(odjazd, 'DD-MM-YYYY'));
    dzien_odjazdu:= EXTRACT(DAY FROM to_date(przyjazd, 'DD-MM-YYYY'));
    dni_pobytu:= dzien_przyjazdu - dzien_odjazdu;
    suma_oplat:= dni_pobytu * cena;

    INSERT INTO i5_rezerwacja (uzytkownik, apartament, klient, przyjazd, odjazd, suma_oplat) 
    VALUES (uzytkownik, apartament, klient, to_date(przyjazd, 'DD-MM-YYYY'), to_date(odjazd, 'DD-MM-YYYY'), suma_oplat);
    UPDATE i5_apartament SET status='Z' WHERE id=apartament;
end;

PROCEDURE dodaj_rezerwacje
(uzytkownik IN INTEGER, apartament IN INTEGER, klient IN INTEGER, parking IN INTEGER, przyjazd IN VARCHAR2, odjazd IN VARCHAR2)
IS
begin
    SELECT cena INTO cena FROM i5_apartament WHERE id=apartament;
    dzien_przyjazdu:= EXTRACT(DAY FROM to_date(odjazd, 'DD-MM-YYYY'));
    dzien_odjazdu:= EXTRACT(DAY FROM to_date(przyjazd, 'DD-MM-YYYY'));
    dni_pobytu:= dzien_przyjazdu - dzien_odjazdu;
    suma_oplat:= dni_pobytu * cena;

    INSERT INTO i5_rezerwacja (uzytkownik, apartament, klient, parking, przyjazd, odjazd, suma_oplat) 
    VALUES (uzytkownik, apartament, klient, parking, to_date(przyjazd, 'DD-MM-YYYY'), to_date(odjazd, 'DD-MM-YYYY'), suma_oplat);
    UPDATE i5_apartament SET status='Z' WHERE id=apartament;
    UPDATE i5_miejsce_parkingowe SET status='Z' WHERE id=parking;
end;
end;
/

/*PROCEDURA USUWA WYGASLE REZERWACJE ORAZ WYSWIETLA INFORMACJE O ICH ILOSCI*/
CREATE OR REPLACE PROCEDURE zwolnij_wolne_apartamenty
IS
ilosc_rekordow INTEGER;
BEGIN
SELECT COUNT(*) INTO ilosc_rekordow FROM i5_rezerwacja WHERE odjazd < CURRENT_DATE;
dbms_output.put_line ('Rezerwacje przeniesione do archiwum: ' || ilosc_rekordow);
DELETE i5_rezerwacja WHERE odjazd < CURRENT_DATE;
END;
/
