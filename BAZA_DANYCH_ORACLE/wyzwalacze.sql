/*SEKWENCJE ORAZ ICH WYZWALACZE*/
CREATE SEQUENCE seq_i5_lokalizacja_id START WITH 1;
CREATE SEQUENCE seq_i5_budynek_id START WITH 1;
CREATE SEQUENCE seq_i5_osoby_id START WITH 1;
CREATE SEQUENCE seq_i5_standard_id START WITH 1;
CREATE SEQUENCE seq_i5_apartament_id START WITH 1;
CREATE SEQUENCE seq_i5_klient_id START WITH 1;
CREATE SEQUENCE seq_i5_opinia_id START WITH 1;
CREATE SEQUENCE seq_i5_miejsce_parkingowe_id START WITH 1;
CREATE SEQUENCE seq_i5_rezerwacja_id START WITH  1;
CREATE SEQUENCE seq_i5_uprawnienia_id START WITH 1;
CREATE SEQUENCE seq_i5_uzytkownik_id START WITH 1;
CREATE SEQUENCE seq_i5_news_id START WITH 1;


CREATE OR REPLACE TRIGGER t_i5_lokalizacja_id
BEFORE INSERT ON i5_lokalizacja
FOR EACH ROW
BEGIN
  SELECT seq_i5_lokalizacja_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_budynek_id
BEFORE INSERT ON i5_budynek
FOR EACH ROW
BEGIN
  SELECT seq_i5_budynek_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_osoby_id
BEFORE INSERT ON i5_osoby
FOR EACH ROW
BEGIN
  SELECT seq_i5_osoby_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_standard_id
BEFORE INSERT ON i5_standard
FOR EACH ROW
BEGIN
  SELECT seq_i5_standard_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_apartament_id
BEFORE INSERT ON i5_apartament
FOR EACH ROW
BEGIN
  SELECT seq_i5_apartament_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_klient_id
BEFORE INSERT ON i5_klient
FOR EACH ROW
BEGIN
  SELECT seq_i5_klient_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_opinia_id
BEFORE INSERT ON i5_opinia
FOR EACH ROW
BEGIN
  SELECT seq_i5_opinia_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_miejsce_parkingowe_id
BEFORE INSERT ON i5_miejsce_parkingowe
FOR EACH ROW
BEGIN
  SELECT seq_i5_miejsce_parkingowe_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_rezerwacja_id
BEFORE INSERT ON i5_rezerwacja
FOR EACH ROW
BEGIN
  SELECT seq_i5_rezerwacja_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_uprawnienia_id
BEFORE INSERT ON i5_uprawnienia
FOR EACH ROW
BEGIN
  SELECT seq_i5_uprawnienia_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_uzytkownik_id
BEFORE INSERT ON i5_uzytkownik
FOR EACH ROW
BEGIN
  SELECT seq_i5_uzytkownik_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

CREATE OR REPLACE TRIGGER t_i5_news_id
BEFORE INSERT ON i5_news
FOR EACH ROW
BEGIN
  SELECT seq_i5_news_id.nextval
  INTO   :new.id
  FROM   dual;
END;
/

/* END SEKWENCJE ORAZ ICH WYZWALACZE*/

/* WYZWALACZ ZMIENIA STATUS APARTAMENTU I PARKINGU NA WOLNY PRZED DELETE */

CREATE OR REPLACE TRIGGER trigger_zwolnij_miejsce_ap
BEFORE DELETE ON i5_rezerwacja
FOR EACH ROW
BEGIN
if :old.parking IS NOT NULL THEN
    UPDATE i5_miejsce_parkingowe SET status='D' WHERE id=:old.parking;
end if;
    UPDATE i5_apartament SET status='D' WHERE id=:old.apartament;
END;
/

/* END WYZWALACZ ZMIENIA STATUS APARTAMENTU I PARKINGU NA WOLNY */

/* WYZWALACZ DODAJE USUNIÊTE REZERWACJE DO HISTORII REZERWACJI */

CREATE OR REPLACE TRIGGER dodaj_rezerwacje_do_historii
BEFORE DELETE ON i5_rezerwacja
FOR EACH ROW
BEGIN
INSERT INTO i5_historia_rezerwacji (rezerwacja, klient, apartament, parking, przyjazd, odjazd, suma_oplat)
VALUES (:old.id, :old.klient, :old.apartament, :old.parking, :old.przyjazd, :old.odjazd, :old.suma_oplat);
END;
/
/* END WYZWALACZ DODAJE USUNIÊTE REZERWACJE DO HISTORII REZERWACJI */

