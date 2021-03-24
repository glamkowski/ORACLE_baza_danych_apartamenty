DROP TABLE i5_lokalizacja CASCADE CONSTRAINTS;
DROP TABLE i5_osoby CASCADE CONSTRAINTS;
DROP TABLE i5_standard CASCADE CONSTRAINTS;
DROP TABLE i5_budynek CASCADE CONSTRAINTS;
DROP TABLE i5_apartament CASCADE CONSTRAINTS;
DROP TABLE i5_klient CASCADE CONSTRAINTS;
DROP TABLE i5_opinia CASCADE CONSTRAINTS;
DROP TABLE i5_rezerwacja CASCADE CONSTRAINTS;
DROP TABLE i5_miejsce_parkingowe CASCADE CONSTRAINTS;
DROP TABLE i5_uprawnienia CASCADE CONSTRAINTS;
DROP TABLE i5_uzytkownik CASCADE CONSTRAINTS;
DROP TABLE i5_historia_rezerwacji CASCADE CONSTRAINTS;



DROP TRIGGER t_i5_budynek_id;
DROP TRIGGER t_i5_lokalizacja_id;
DROP TRIGGER t_i5_osoby_id;
DROP TRIGGER t_i5_standard_id;
DROP TRIGGER T_i5_apartament_id;
DROP TRIGGER t_i5_klient_id;
DROP TRIGGER t_i5_opinia_id;
DROP TRIGGER t_i5_miejsce_parkingowe_id;
DROP TRIGGER t_i5_rezerwacja_id;
DROP TRIGGER t_i5_uprawnienia_id;


DROP SEQUENCE seq_i5_budynek_id;
DROP SEQUENCE seq_i5_lokalizacja_id;
DROP SEQUENCE seq_i5_osoby_id;
DROP SEQUENCE seq_i5_standard_id;
DROP SEQUENCE seq_i5_apartament_id;
DROP SEQUENCE seq_i5_klient_id;
DROP SEQUENCE seq_i5_opinia_id;
DROP SEQUENCE seq_i5_miejsce_parkingowe_id;
DROP SEQUENCE seq_i5_rezerwacja_id;
DROP SEQUENCE seq_i5_uprawnienia_id;
DROP SEQUENCE seq_i5_uzytkownik_id;

drop package body overload_dodaj_rezerwacje;
drop package overload_dodaj_rezerwacje;

drop trigger trigger_zwolnij_miejsce_ap;
