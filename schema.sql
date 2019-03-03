-- customersテーブルがあったら削除する --
DROP TABLE IF EXISTS customers;

-- customersテーブルを作る --
CREATE TABLE customers(
  name TEXT,
  age  TEXT,
  sex  TEXT,
  home TEXT,
  freeans TEXT
);

-- 初期データをいくつかいれる --
INSERT INTO customers
VALUES ('BOB', 15, 'man', 'USA', 'hello!'),
('TOM', 57, 'man', 'ENG', 'hi!howareyou'),
('JEAN', 28, 'woman', 'MAC', 'こんにちは');
