
SELECT * FROM avions;
select modele,constructeur FROM avions;

SELECT * FROM avions WHERE capacite > 300;
select * FROM avions WHERE autonomie_km< 7000;
SELECT * FROM avions WHERE en_service = 0;
SELECT * FROM avions WHERE constructeur = 'Boeing';
SELECT * FROM avions WHERE capacite BETWEEN 100 AND 300;
SELECT DISTINCT constructeur FROM avions;
SELECT * FROM avions ORDER BY autonomie_km ASC;
SELECT * FROM avions ORDER BY capacite DESC;
SELECT * FROM avions ORDER BY autonomie_km DESC LIMIT 3;
SELECT * FROM avions ORDER BY capacite ASC LIMIT 5;
SELECT * FROM avions WHERE autonomie_km BETWEEN 6000 AND 13000;

