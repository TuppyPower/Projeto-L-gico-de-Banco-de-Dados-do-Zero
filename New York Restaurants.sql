-- Criação do esquema do banco de dados
CREATE TABLE nomnom (
  name TEXT,
  neighborhood TEXT,
  cuisine TEXT,
  review INTEGER,
  price TEXT,
  health TEXT
);

-- Inserção dos dados
INSERT INTO nomnom (name, neighborhood, cuisine, review, price, health)
VALUES
  ('Peter Luger Steak House', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
  ('Jongro BBQ', 'Midtown', 'Korean', 4.5, '$$', 'A'),
  ('Pocha 32', 'Midtown', 'Korean', 4, '$$', 'A'),
  ('Nom Wah Tea Parlor', 'Chinatown', 'Chinese', 4.2, '$', 'A'),
  ('Roberta''s', 'Brooklyn', 'Pizza', 4.4, '$$', 'A'),
  ('Speedy Romeo', 'Brooklyn', 'Pizza', 4.4, '$$', 'A'),
  ('Bunna Cafe', 'Brooklyn', 'Ethiopian', 4.6, '$$', 'A'),
  ('Massawa', 'Uptown', 'Ethiopian', 4, '$$', NULL),
  ('Buddha Bodai', 'Chinatown', 'Vegetarian', 4.2, '$$', 'A'),
  ('Nan Xiang Xiao Long Bao', 'Queens', 'Chinese', 4.2, '$', 'A'),
  ('Mission Chinese Food', 'Downtown', 'Chinese', 3.9, '$$', 'A'),
  ('Baohaus', 'Downtown', 'Chinese', 4.2, '$', 'A'),
  ('al di la Trattoria', 'Brooklyn', 'Italian', 4.4, '$$$', 'A'),
  ('Locanda Vini & Olii', 'Brooklyn', 'Italian', 4.4, '$$$', 'A'),
  ('Rao''s', 'Uptown', 'Italian', 4.2, '$$$', 'A'),
  ('Minca', 'Downtown', 'Japanese', 4.4, '$$', 'A'),
  ('Kenka', 'Downtown', 'Japanese', 4.3, '$', 'B'),
  ('Yakitori Taisho', 'Downtown', 'Japanese', 4.1, '$', 'B'),
  ('Xi''an Famous Foods', 'Midtown', 'Chinese', 4.4, '$', 'A'),
  ('Shake Shack', 'Midtown', 'American', 4.4, '$', 'A'),
  ('The Halal Guys', 'Midtown', 'Mediterranean', 4.4, '$', 'A'),
  ('Foodcademy', 'Midtown', 'American', 4.4, '$$', 'A'),
  ('Sonnyboy''s', 'Brooklyn', 'Chinese', 4.2, '$$', 'A'),
  ('The Cole Romano Experience', 'Brooklyn', 'Italian', 2.1, '$$$$$', 'C'),
  ('Timbo Slice', 'Brooklyn', 'Pizza', 2.8, '$', 'B'),
  ('Scorpio Sisters', 'Downtown', 'American', 4.2, '$$', 'A'),
  ('N.E.D', 'Uptown', 'American', 4.2, '$$$', 'A'),
  ('Golden Unicorn', 'Chinatown', 'Chinese', 4, '$$', 'A'),
  ('Di Fara Pizza', 'Midtown', 'Pizza', 4.3, '$$', 'A'),
  ('Kang Ho Dong Baekjeong', 'Midtown', 'Korean', 4.5, '$$', 'A'),
  ('Roti Roll Bombay Frankie', 'Midtown', 'Indian', 4.1, '$', 'A'),
  ('Dan and John''s Wings', 'Brooklyn', 'American', 4.5, '$$', 'A'),
  ('Ping''s Seafood', 'Chinatown', 'Chinese', 4.1, '$$', 'A'),
  ('XO Kitchen', 'Chinatown', 'Chinese', 4.2, '$$', 'A'),
  ('Carbone', 'Greenwich Village', 'Italian', 4.4, '$$$$', 'A'),
  ('I Sodi', 'Greenwich Village', 'Italian', 4.5, '$$$$', 'A'),
  ('Lilia', 'Brooklyn', 'Italian', 4.4, '$$$$', 'A'),
  ('Enid''s', 'Brooklyn', 'American', 4.1, '$$', 'A'),
  ('Jajaja', 'Chinatown', 'Vegetarian', 4.2, '$$', 'A'),
  ('Russ & Daughters', 'Midtown', 'Jewish', 4.4, '$$', 'A'),
  ('The Meatball Shop', 'Chinatown', 'American', 4.3, '$$', 'A'),
  ('Dirt Candy', 'Midtown', 'Vegetarian', 4.3, '$$', 'A'),
  ('Ippudo', 'Midtown', 'Japanese', 4.3, '$$', 'A'),
  ('St. Anselm', 'Brooklyn', 'American', 4.4, '$$', 'A'),
  ('Marea', 'Midtown', 'Italian', 4.4, '$$$$', 'A'),
  ('Lighthouse', 'Brooklyn', 'American', 4.1, '$$', 'A'),
  ('Los Hermanos', 'Brooklyn', 'Mexican', 4.4, '$', 'A'),
  ('The Standard Biergarten', 'Midtown', 'German', 4, '$$', 'A'),
  ('Ootoya', 'Midtown', 'Japanese', 4.1, '$$', 'A');
-- Recuperação simples com SELECT Statement
SELECT name, cuisine, price
FROM nomnom;
-- Filtros com WHERE Statement
SELECT name, cuisine, review
FROM nomnom
WHERE neighborhood = 'Brooklyn' AND cuisine = 'Pizza';
-- Crie expressões para gerar atributos derivados
SELECT name, cuisine, price,
  CASE
    WHEN review >= 4.5 THEN 'Highly Recommended'
    WHEN review >= 4 THEN 'Recommended'
    ELSE 'Average'
  END AS recommendation
FROM nomnom;
-- Defina ordenações dos dados com ORDER BY
SELECT name, cuisine, review
FROM nomnom
WHERE neighborhood = 'Midtown'
ORDER BY review DESC;
-- Condições de filtros aos grupos – HAVING Statement
SELECT cuisine, AVG(review) AS avg_review
FROM nomnom
GROUP BY
