-- customersテーブルがあったら削除する --
DROP TABLE IF EXISTS customers;

-- customersテーブルを作る --
CREATE TABLE customers(
  name TEXT,
  age  INTEGER,
  sex  TEXT,
  home TEXT
);

-- 初期データをいくつかいれる --
INSERT INTO customers
VALUES ('BOB', 15, 'man', 'USA'),
('TOM', 57, 'man', 'ENG'),
('JEAN', 28, 'woman', 'MAC');
