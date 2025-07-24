SELECT * FROM livres WHERE date_publication < '1900-01-01';

SELECT * FROM livres ORDER BY date_publication ASC;

SELECT 
  FLOOR(YEAR(date_publication) / 10) * 10 AS decennie,
  COUNT(*) AS nombre_de_livres
FROM livres
GROUP BY decennie
ORDER BY decennie;