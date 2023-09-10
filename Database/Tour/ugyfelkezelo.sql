//Adatbázis létrehozása:

CREATE DATABASE ugyfelkezelo;

//Tábla létrehozása:
CREATE TABLE ugyfelek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefon VARCHAR(15),
    szuletesi_datum DATE
);

INSERT INTO ugyfelek (nev, email, telefon, szuletesi_datum)
VALUES
    ('Alice Johnson', 'alice@example.com', '+1-555-111-2222', '1990-03-15'),
    ('Bob Williams', 'bob@example.com', '+1-555-333-4444', '1985-08-22'),
    ('Eva Davis', 'eva@example.com', '+1-555-555-6666', '1993-01-10'),
    ('David Brown', 'david@example.com', '+1-555-777-8888', '1980-11-05'),
    ('Sophia Lee', 'sophia@example.com', '+1-555-999-0000', '1987-06-20'),
    ('Michael Martin', 'michael@example.com', '+1-555-121-2121', '1992-09-30'),
    ('Olivia Moore', 'olivia@example.com', '+1-555-343-4343', '1982-04-25'),
    ('William Wilson', 'william@example.com', '+1-555-565-6565', '1995-07-18'),
    ('Emma Taylor', 'emma@example.com', '+1-555-787-8787', '1984-02-12'),
    ('James Anderson', 'james@example.com', '+1-555-909-0909', '1991-12-08'),
    ('Ava Harris', 'ava@example.com', '+1-555-232-3232', '1983-10-01'),
    ('Liam Thompson', 'liam@example.com', '+1-555-454-5454', '1989-05-14'),
    ('Mia White', 'mia@example.com', '+1-555-676-7676', '1994-03-28'),
    ('Benjamin Clark', 'benjamin@example.com', '+1-555-898-9898', '1986-07-09'),
    ('Charlotte Turner', 'charlotte@example.com', '+1-555-121-2121', '1990-08-02'),
    ('Henry Rodriguez', 'henry@example.com', '+1-555-343-4343', '1987-09-16'),
    ('Aria Hall', 'aria@example.com', '+1-555-565-6565', '1993-11-11'),
    ('Elijah King', 'elijah@example.com', '+1-555-787-8787', '1984-12-04'),
    ('Amelia Adams', 'amelia@example.com', '+1-555-010-1010', '1981-06-07'),
    ('Liam Patterson', 'liam@example.com', '+1-555-232-3232', '1996-02-19');

//Adatok beszúrása:
//Lekérdezhetjük az összes ügyfél adatait az alábbi módon:
SELECT * FROM ugyfelek;

//Frissíthetjük egy ügyfél nevét az alábbi módon:
UPDATE ugyfelek
SET nev = 'New Name'
WHERE id = 1;

//Az ügyfelek nevének és email címének lekérése
SELECT nev, email FROM ugyfelek;

//Az ügyfelek számának lekérése
SELECT COUNT(*) FROM ugyfelek;

//Azoknak az ügyfeleknek a lekérése, akiknek a telefonszáma nincs megadva
SELECT * FROM ugyfelek WHERE telefon IS NULL;

