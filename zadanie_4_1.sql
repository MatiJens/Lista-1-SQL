# Wyzerowanie tabeli, żeby móc do niej dodać ponownie trzech przykładowych kurierów
TRUNCATE TABLE kurierzy;

# Kurier zajęty (ID zgodne z ID z tabeli przesylki)
INSERT INTO kurierzy (kurier_ID, kurier_miasto, kurier_czyDostepny, kurier_aktualnaPrzesylka)
VALUES ('7776', 'Działoszyn', 'NIE', '111222');

# Kurier wolny
INSERT INTO kurierzy (kurier_ID, kurier_miasto, kurier_czyDostepny, kurier_aktualnaPrzesylka)
VALUES ('2115', 'Wieluń', 'TAK', NULL);

# Kurier zajęty (ID zgodne z ID z tabeli przesylki)
INSERT INTO kurierzy (kurier_ID, kurier_miasto, kurier_czyDostepny, kurier_aktualnaPrzesylka)
VALUES ('0001', 'Pajęczno', 'NIE', '256951');

# Wyświetlenie tabeli
SELECT * FROM kurierzy;