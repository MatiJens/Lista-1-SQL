# ID i nadawca przesyłki
SELECT przesylka_ID, przesylka_nadawca FROM przesylki;

# ID i nadawca przesyłki z grudnia 2018 posortowane według miasta
SELECT przesylka_ID, przesylka_nadawca FROM przesylki
WHERE YEAR(przesylka_dataNadania) = 2018 AND MONTH(przesylka_dataNadania) = 12
ORDER BY przesylka_miastoDostarczenia;

# Nazwy odbiorców zaczynających się "p"
SELECT przesylka_odbiorca FROM przesylki
WHERE przesylka_odbiorca LIKE 'p%';

# ID i data nadania przesyłki, które nie są jeszcze dostarczone
SELECT przesylka_ID, przesylka_dataNadania FROM przesylki
WHERE przesylka_dataDostarczenia IS NULL;

# Usunięcie przesyłki o ID 123446
DELETE FROM przesylki 
WHERE przesylka_ID = 123446;

# Dodanie nowej przesyłki
INSERT INTO przesylki (przesylka_ID, przesylka_nadawca, przesylka_odbiorca, przesylka_miastoDostarczenia, przesylka_dataNadania, przesylka_dataDostarczenia)
VALUES ('988989', 'Jan Nowak', 'Politechnika Wrocławska', 'Wrocław', '2025-05-15', '2025-05-22');

# Wyświetlenie tablicy z nowo dodaną przesyłką
SELECT * FROM przesylki;

