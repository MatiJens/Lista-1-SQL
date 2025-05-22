# Nazwiska i imiona wszystkich studentów
SELECT student_nazwisko, student_imiona FROM dane_osobowe;

# Nr indeksu i data urodzenia studentów urodzonych przed 1990
SELECT student_nrIndeksu, student_dataUrodzenia FROM dane_osobowe
WHERE YEAR(student_dataUrodzenia) < 1990;

# Nazwiska i imiona wszystkich studentów posortowane alfabetycznie według nazwiska
SELECT student_nazwisko, student_imiona FROM dane_osobowe ORDER BY student_nazwisko;

# Nr indeksu i miejsce zamieszkania studentów spoza Wrocławia
SELECT student_nrIndeksu, student_miastoZamieszkania FROM dane_osobowe
WHERE NOT student_miastoZamieszkania = 'Wrocław';

# Usunięcie z tabeli studenta o nr indeksu 111111
DELETE FROM dane_osobowe 
WHERE student_nrIndeksu = 111111;

# Dodanie nowego studenta
INSERT INTO dane_osobowe (student_nrIndeksu, student_nazwisko, student_imiona, student_dataUrodzenia, student_miastoZamieszkania)
VALUES ('128745', 'Martyniuk', 'Karol Marek', '1990-08-24', 'Wrocław');

# Tabela dane_osobowe z usuniętym studentem o nr indeksu 111111 oraz dodanym nowym studentem
SELECT * FROM dane_osobowe;