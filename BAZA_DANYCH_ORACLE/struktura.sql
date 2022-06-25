CREATE TABLE i5_lokalizacja (
    id INTEGER NOT NULL,
    nazwa VARCHAR(200) NOT NULL,
    CONSTRAINT pk_i5_lokalizacja_id PRIMARY KEY (id),
    CONSTRAINT unique_i5_lokalizacja_nazwa UNIQUE (nazwa)
);

CREATE TABLE i5_budynek (
    id INTEGER NOT NULL,
    nazwa VARCHAR(200) NOT NULL,
    lokalizacja INTEGER NOT NULL,
    CONSTRAINT pk_i5_budynek_id PRIMARY KEY (id),
    CONSTRAINT fk_i5_budynek_lokalizacja FOREIGN KEY (lokalizacja) REFERENCES i5_lokalizacja(id),
    CONSTRAINT unique_i5_budynek_nazwa UNIQUE (nazwa)
);

CREATE TABLE i5_osoby (
    id INTEGER NOT NULL,
    ilosc INTEGER NOT NULL,
    CONSTRAINT pk_i5_osoby_id PRIMARY KEY (id),
    CONSTRAINT unique_i5_osoby_ilosc UNIQUE (ilosc)
);

CREATE TABLE i5_standard (
    id INTEGER NOT NULL,
    nazwa VARCHAR(100) NOT NULL,
    CONSTRAINT pk_i5_standard_id PRIMARY KEY (id),
    CONSTRAINT unique_i5_standard_nazwa UNIQUE (nazwa)
);

CREATE TABLE i5_apartament (
    id INTEGER NOT NULL,
    budynek INTEGER NOT NULL,
    osoby INTEGER NOT NULL,
    standard INTEGER NOT NULL,
    status CHAR(1) DEFAULT 'D' NOT NULL,
    cena NUMBER(10,2),
    CONSTRAINT pk_i5_apartament_id PRIMARY KEY (id),
    CONSTRAINT fk_i5_apartament_budynek FOREIGN KEY (budynek) REFERENCES i5_budynek(id),
    CONSTRAINT fk_i5_apartament_osoby FOREIGN KEY (osoby) REFERENCES i5_osoby(id),
    CONSTRAINT fk_i5_apartament_standard FOREIGN KEY (standard) REFERENCES i5_standard(id)
);

CREATE TABLE i5_klient (
    id INTEGER NOT NULL,
    imie VARCHAR(200),
    nazwisko VARCHAR(200),
    dowod VARCHAR2 (9 CHAR),
    CONSTRAINT pk_i5_klient_id PRIMARY KEY (id),
    CONSTRAINT unique_i5_klient_dowod UNIQUE (dowod),
    CONSTRAINT check_i5_klient_dowod CHECK (REGEXP_LIKE(dowod,'^[A-Z]{3}[0-9]{6}$'))
);

CREATE TABLE i5_opinia (
    id INTEGER NOT NULL,
    klient INTEGER NOT NULL,
    budynek INTEGER NOT NULL,
    ocena INTEGER NOT NULL,
    komentarz VARCHAR2(400),
    CONSTRAINT pk_i5_opinia_id PRIMARY KEY (id),
    CONSTRAINT fk_i5_opinia_klient FOREIGN KEY (klient) REFERENCES i5_klient(id),
    CONSTRAINT fk_i5_opinia_budynek FOREIGN KEY (budynek) REFERENCES i5_budynek(id),
    CONSTRAINT unique_i5_opinia UNIQUE (klient, budynek)
);

CREATE TABLE i5_miejsce_parkingowe (
    id INTEGER NOT NULL,
    kod VARCHAR(10) NOT NULL,
    budynek INTEGER NOT NULL,
    status CHAR(1) DEFAULT 'W' NOT NULL,
    CONSTRAINT pk_i5_mprakingowe_id PRIMARY KEY (id),
    CONSTRAINT fk_i5_mprakingowe_budynek FOREIGN KEY (budynek) REFERENCES i5_budynek(id)
);

CREATE TABLE i5_uprawnienia (
    id INTEGER,
    nazwa VARCHAR(120),
    CONSTRAINT pk_i5_uprawnienia PRIMARY KEY (id),
    CONSTRAINT unique_i5_uprawienia_nazwa UNIQUE (nazwa)
);

CREATE TABLE i5_uzytkownik (
    id INTEGER NOT NULL,
    login VARCHAR2(200) NOT NULL,
    haslo VARCHAR2(200) NOT NULL,
    email VARCHAR2(200) NOT NULL,
    telefon VARCHAR2(11 CHAR),
    imie VARCHAR2(200) NOT NULL,
    nazwisko VARCHAR2(200) NOT NULL,
    uprawnienia INTEGER,
    CONSTRAINT pk_i5_uzytkownik_id PRIMARY KEY (id),
    CONSTRAINT fk_i5_uzytkownik_uprawnienia FOREIGN KEY (uprawnienia) REFERENCES i5_uprawnienia(id),
    CONSTRAINT unique_i5_uzytkownik_login UNIQUE (login),
    CONSTRAINT unique_i5_uzytkownik_email UNIQUE (email)
);

CREATE TABLE i5_rezerwacja (
    id INTEGER NOT NULL,
    uzytkownik INTEGER NOT NULL,
    apartament INTEGER NOT NULL,
    klient INTEGER NOT NULL,
    parking INTEGER,
    przyjazd DATE NOT NULL,
    odjazd DATE NOT NULL,
    suma_oplat NUMBER (10,2),
    CONSTRAINT pk_i5_rezerwacja_id PRIMARY KEY (id),
    CONSTRAINT fk_i5_rezerwacja_uzytkownik FOREIGN KEY (uzytkownik) REFERENCES i5_uzytkownik(id),
    CONSTRAINT fk_i5_apartament FOREIGN KEY (apartament) REFERENCES i5_apartament(id),
    CONSTRAINT fk_i5_klient FOREIGN KEY (klient) REFERENCES i5_klient(id),
    CONSTRAINT fk_i5_miejsce_parkingowe FOREIGN KEY (parking) REFERENCES i5_miejsce_parkingowe(id),
    CONSTRAINT unique_i5_parking UNIQUE (parking),
    CONSTRAINT unique_i5_apartament UNIQUE (apartament)

);

CREATE TABLE i5_historia_rezerwacji (
    rezerwacja INTEGER,
    klient INTEGER,
    apartament INTEGER,
    parking INTEGER,
    przyjazd DATE,
    odjazd DATE,
    suma_oplat NUMBER (10,2),
    CONSTRAINT historia_pobytow_id PRIMARY KEY (rezerwacja)
);

CREATE TABLE i5_news (
    id INTEGER,
    tytul VARCHAR2(255),
    tresc VARCHAR2(955),
    CONSTRAINT id_i5_news PRIMARY KEY (id)
);



