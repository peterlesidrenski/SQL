-- CREATE DATABASE knizharnitsa;
-- USE knizharnitsa;

-- CREATE TABLE avtori (
--     id_avtor INT PRIMARY KEY AUTO_INCREMENT,
--     ime VARCHAR(50) NOT NULL,
--     familiya VARCHAR(50) NOT NULL,
--     email VARCHAR(100) UNIQUE
-- );

-- INSERT INTO avtori (ime, familiya, email) VALUES
-- ('Ivan', 'Vazov', 'ivan@example.com'),
-- ('Elin', 'Pelin', 'elin@example.com'),
-- ('Aleko', 'Konstantinov', 'aleko@example.com');

-- ALTER TABLE avtori
-- ADD COLUMN telefon CHAR(10);

-- ALTER TABLE avtori
-- MODIFY telefon VARCHAR(20)

-- 2.
-- CREATE TABLE knigi (
--     id_kniga INT PRIMARY KEY AUTO_INCREMENT,
--     zaglavie VARCHAR(100) NOT NULL,
--     godina_izdavane INT,
--     cena DECIMAL(10,2),
--     janr VARCHAR(30)
-- );
-- INSERT INTO knigi
-- (zaglavie, godina_izdavane, cena, janr)
-- VALUES
-- ('Pod igoto', 1894, 25.50, 'роман'),
-- ('Bai Ganyo', 1895, 18.90, 'роман'),
-- ('Yan Bibiyan', 1933, 15.00, 'фантастика'),
-- ('Zemya', 1930, 22.00, 'роман');

-- ALTER TABLE knigi
-- ADD COLUMN nalichnost INT;

-- ALTER TABLE knigi
-- ADD CONSTRAINT chk_cena CHECK (cena > 0);

-- ALTER TABLE knigi
-- ADD COLUMN id_avtor INT;

-- ALTER TABLE knigi
-- ADD CONSTRAINT fk_knigi_avtori
-- FOREIGN KEY (id_avtor)
-- REFERENCES avtori(id_avtor);

-- UPDATE knigi SET id_avtor = 1 WHERE id_kniga = 1;
-- UPDATE knigi SET id_avtor = 3 WHERE id_kniga = 2;
-- UPDATE knigi SET id_avtor = 2 WHERE id_kniga = 3;
-- UPDATE knigi SET id_avtor = 2 WHERE id_kniga = 4;


-- 3.
-- CREATE TABLE poruchki (
--     id_poruchka INT PRIMARY KEY AUTO_INCREMENT,
--     ime_klient VARCHAR(100) NOT NULL,
--     email_klient VARCHAR(100),
--     id_kniga INT,
--     data_poruchka DATE,
--     FOREIGN KEY (id_kniga)
--         REFERENCES knigi(id_kniga),
--     UNIQUE (email_klient, id_kniga)
-- );
-- INSERT INTO poruchki
-- (ime_klient, email_klient, id_kniga, data_poruchka)
-- VALUES
-- ('Georgi Atoma', 'georgi@example.com', 1, '2026-01-10'),
-- ('Maria Ilieva', 'maria@example.com', 2, '2026-01-11'),
-- ('Petar Petrov', 'petar@example.com', 3, '2026-01-12'),
-- ('Georgi Ivanov', 'georgi@example.com', 4, '2026-01-13'),
-- ('Elena Georgieva', 'elena@example.com', 1, '2026-01-14');


-- 4.
-- ALTER TABLE poruchki
-- ADD COLUMN zabelejka VARCHAR(255);

-- ALTER TABLE poruchki
-- DROP COLUMN zabelejka;

-- CREATE TABLE test (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     ime VARCHAR(50)
-- );

-- DROP TABLE test;