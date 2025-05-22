USE studenci; # Tabela ma się zapisać w DB studenci

CREATE TABLE kurs_jprog (
	student_nrIndeksu INT, # typu int, nie trzeba dodawać NOT NULL, ponieważ PRIMARY KEY to zapewnia
    kurs_ocena FLOAT, # typu float (zmiennoprzecinkowy)
    kurs_czyZaliczenie CHAR(3), # typu pole tekstowe o stałej długości 3
    kurs_czyPowtorkowy CHAR(3), # typu pole tekstowe o stałej długości 3
    PRIMARY KEY (student_nrIndeksu), # ustawiamy student_nrIndeksu jako primary key
    FOREIGN KEY (student_nrIndeksu) REFERENCES dane_osobowe(student_nrIndeksu) # student_nrIndeksu odwołuje się do student_nrIndeksu z tabeli dane_osobowe
    )