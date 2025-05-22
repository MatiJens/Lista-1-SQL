USE dostawy;

CREATE TABLE kurierzy (
	kurier_ID INT NOT NULL,
    kurier_miasto VARCHAR(100) NOT NULL,
    kurier_czyDostepny CHAR(3),
    kurier_aktualnaPrzesylka INT,
    PRIMARY KEY (kurier_ID),
    FOREIGN KEY (kurier_aktualnaPrzesylka) REFERENCES przesylki(przesylka_ID)
    )
    