-- Lokalizcja
INSERT INTO i5_lokalizacja (nazwa) VALUES ('Warszawa');
INSERT INTO i5_lokalizacja (nazwa) VALUES ('Wroclaw');
INSERT INTO i5_lokalizacja (nazwa) VALUES ('Krakow');

-- Budynki Warszawa
INSERT INTO i5_budynek (nazwa, lokalizacja) VALUES ('Niebieski', 1);
INSERT INTO i5_budynek (nazwa, lokalizacja) VALUES ('Srebrny', 1);
INSERT INTO i5_budynek (nazwa, lokalizacja) VALUES ('Zloty', 1);
-- Budynek Wroclaw
INSERT INTO i5_budynek (nazwa, lokalizacja) VALUES ('Pustynny', 2);
-- Budynek Krakow
INSERT INTO i5_budynek (nazwa, lokalizacja) VALUES ('Wakacyjny', 3);

-- Osoby
INSERT INTO i5_osoby (ilosc) VALUES (2);
INSERT INTO i5_osoby (ilosc) VALUES (4);
INSERT INTO i5_osoby (ilosc) VALUES (8);

-- Standard
INSERT INTO i5_standard (nazwa) VALUES ('niski');
INSERT INTO i5_standard (nazwa) VALUES ('sredni');
INSERT INTO i5_standard (nazwa) VALUES ('wysoki');

--Apartament (NIEBIESKI, Warszawa)
/*2 MIESZKANIA 2 OSOBOWE O STANDARDZIE NISKIM*/
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (1, 1, 1, 200.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (1, 1, 1, 200.00);
/*2 MIESZKANIA 4 OSOBOWE O STANDARDZIE SREDNIM*/
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (1, 2, 2, 400.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (1, 2, 2, 400.00);
/*2 MIESZKANIA 8 OSOBOWE O STANDARDZIE WYSOKIM*/
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (1, 3, 3, 800.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (1, 3, 3, 800.00);

--Apartament (Srebrny, Warszawa)
/*2 MIESZKANIA 4 OSOBOWE O STANDARDZIE SREDNIM*/
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (2, 2, 2, 400.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (2, 2, 2, 400.00);
/*1 MIESZKANIE 8 OSOBOWE O STANDARDZIE WYSOKIM*/
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (2, 3, 3, 800.00);

--Apartament (Zloty, Warszawa)
/*3 MIESZKANIA 8 OSOBOWE O STANDARDZIE WYSOKIM*/
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (3, 3, 3, 1000.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (3, 3, 3, 1000.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (3, 3, 3, 1000.00);

--Apartament (Pustynny, Wroclaw)
/*3 MIESZKANIA 2 OSOBOWE O STANDARDZIE NISKIM*/
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (4, 1, 1, 250.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (4, 1, 1, 250.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (4, 1, 1, 250.00);

--Apartament (Wakacyjny, Wroclaw)
/*4 MIESZKANIA 4 OSOBOWE O STANDARDZIE SREDNIM*/
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (5, 2, 2, 500.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (5, 2, 2, 500.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (5, 2, 2, 500.00);
INSERT INTO i5_apartament (budynek, osoby, standard, cena) VALUES (5, 2, 2, 500.00);

-- Uzytkownicy
INSERT INTO i5_uzytkownik (login, haslo, email, telefon, imie, nazwisko)
VALUES ('admin111', 'admin1', 'oskar.glamkowski@gmail.com', 725632088, 'Oskar', 'Glamkowski');

-- Klienci
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Edyta', 'Budzik', 'AAA000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Aleksandra', 'Kowalska', 'BBB000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Oskar', 'Kowlaski', 'CCC000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Jolanta', 'Wielka', 'DDD000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Adam', 'Trzeci', 'EEE000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Monika', 'Nowak', 'FFF000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Kacper', 'Czerwiec', 'GGG000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Anna', 'Lipiec', 'HHH000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Ewa', 'Listopad', 'III000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Maria', 'Grudzien', 'JJJ000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Dawid', 'Nowakowski', 'KKK000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Piotr', 'Dzien', 'MMM000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Igor', 'Skok', 'NNN000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Damian', 'Szybki', 'PPP000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Albert', 'Czwarty', 'RRR000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Krystian', 'Noc', 'YYY000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Oliwia', 'Ocean', 'SSS000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Jagoda', 'Jezioro', 'RRA000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Kamila', 'Tatry', 'RRB000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Urszula', 'Gorska', 'RRC000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Oskar', 'Czwarty', 'RRD000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Andrzej', 'Pierwszy', 'RRE000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Izabela', 'Pierwsza', 'RRF000000');
INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES ('Witold', 'Spokojny', 'EXE000000');

--Rezerwacje
INSERT INTO i5_rezerwacja (uzytkownik, apartament, klient, przyjazd, odjazd, suma_oplat) 
VALUES (1, 1, 1, to_date('16-03-2021', 'DD-MM-YYYY'), to_date('20-03-2021', 'DD-MM-YYYY'), 3000.30);

INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('P1', 4);
select * from i5_apartament;


