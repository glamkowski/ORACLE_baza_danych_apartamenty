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

--Miejsca parkingowe
--Miejsca [P] dla budynku Niebieski
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('N1', 1);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('N2', 1);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('N3', 1);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('N4', 1);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('N5', 1);
--Miejsca [P] dla budynku Srebrny
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('S1', 2);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('S2', 2);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('S3', 2);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('S4', 2);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('S5', 2);
--Miejsca [P] dla budynku Zloty
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('Z1', 3);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('Z2', 3);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('Z3', 3);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('Z4', 3);
--Miejsca [P] dla budynku Pustynny
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('P1', 4);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('P2', 4);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('P3', 4);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('P4', 4);
--Miejsca [P] dla budynku Wakacyjny
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('P1', 5);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('P2', 5);
INSERT INTO i5_miejsce_parkingowe (kod, budynek) VALUES ('P3', 5);

/*Opinie klientów*/
INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (1, 1, 4, 'Budynek jest wspanialy, polecam!');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (2, 1, 3, 'Blisko do pracy, polecam ten budynek');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (3, 1, 5, 'Duza przestrzeñ, polecam wszystkim');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (1, 2, 3, 'Ten budynek jest ok, klimatyzacja nie dziala sprawnie.');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (2, 2, 5, 'Polecam, budynek jest ok.');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (3, 2, 4, 'Bardzo dobra lokalizacja budynku');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (4, 2, 5, 'Wspaniale miejsce, polecam wszystkim');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (5, 3, 3, 'Blisko do sklepów, miejsce jest ok');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (1, 3, 1, 'Nie polecam budynku, mala ilosc miejsca!!');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (7, 4, 3, 'Bardzo dobra lokalizacja obiektu');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (8, 4, 5, 'Dobre miejsce i cena, polecam');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (9, 4, 3, 'Blisko do parkingu');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (10, 4, 4, 'Znakomita obsluga');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (11, 5, 1, 'Bardzo daleko od parkingu');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (12, 5, 1, 'Spokojne miejsce, polecam wszystkim');

INSERT INTO i5_opinia (klient, budynek, ocena, komentarz)
VALUES (13, 5, 1, '£atwy dojazd, polecam!!');

-- DODANIE NEWSOW
INSERT INTO i5_news (tytul, tresc) VALUES ('Testowy news', 'Donec euismod leo non nibh ornare rhoncus. Etiam quis orci in mi lacinia lacinia at at erat. Nunc ac tristique purus. Nulla sapien nulla, convallis at ex ut, venenatis porta magna. Etiam pulvinar nisl eget libero ullamcorper euismod. Praesent imperdiet ante in nisi accumsan, eget sagittis lorem condimentum. Morbi finibus feugiat nisl eu tempor. Cras rhoncus fringilla tortor, id lobortis quam feugiat sagittis. Nunc at enim in neque porttitor mattis non id turpis. In tincidunt convallis enim sed scelerisque. Cras et pellentesque velit. In ullamcorper, dui pulvinar aliquet aliquam, purus sapien egestas elit, sit amet porta erat tellus eu leo. Mauris auctor tellus consectetur mauris ullamcorper, nec viverra justo commodo. Phasellus maximus neque nunc, vel vestibulum ligula accumsan non. Donec condimentum congue nunc quis semper. Pellentesque ultricies sem eros');
INSERT INTO i5_news (tytul, tresc) VALUES ('Powitanie', 'dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates');
INSERT INTO i5_news (tytul, tresc) VALUES ('Kolejny news', 'dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates');



