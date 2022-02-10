-- Comments in SQL Start with dash-dash --
products_db=# INSERT INTO products (name, price, can_be_returned)
VALUES ('chair', 44.00, false)
;
INSERT 0 1
products_db=# INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', 25.99, true)
;
INSERT 0 1
products_db=# INSERT INTO products (name, price, can_be_returned)
VALUES ('table', 124.00, false)
;
INSERT 0 1
products_db=# INSERT INTO products (name, price, can_be_returned)
VALUES ('ladder', 24.00, false)
;
INSERT 0 1
products_db=# SELECT * FROM products;
 id |  name  | price | can_be_returned
----+--------+-------+-----------------
  1 | chair  |    44 | f
  2 | stool  | 25.99 | t
  3 | table  |   124 | f
  4 | ladder |    24 | f
(4 rows)

products_db=# SELECT name FROM products;
  name
--------
 chair
 stool
 table
 ladder
(4 rows)

products_db=# SELECT name, price FROM products;
  name  | price
--------+-------
 chair  |    44
 stool  | 25.99
 table  |   124
 ladder |    24
(4 rows)

products_db=# SELECT can_be_returned FROM products WHERE can_be_returned = 1;
ERROR:  operator does not exist: boolean = integer
LINE 1: ...ECT can_be_returned FROM products WHERE can_be_returned = 1;
                                                                   ^
HINT:  No operator matches the given name and argument types. You might need to add explicit type casts.
products_db=# SELECT can_be_returned FROM products WHERE can_be_returned = true;
 can_be_returned
-----------------
 t
(1 row)

products_db=# SELECT name FROM products WHERE can_be_returned = true;
 name
-------
 stool
(1 row)

products_db=# SELECT name FROM products WHERE price < 44;
  name
--------
 stool
 ladder
(2 rows)

products_db=# SELECT name FROM products WHERE price BETWEEN 22.50 AND 99.99;
  name
--------
 chair
 stool
 ladder
(3 rows)

products_db=# UPDATE products SET price = 24 WHERE name = 'chair';
UPDATE 1
products_db=# UPDATE products SET price = 5.99 WHERE name = 'stool';
UPDATE 1
products_db=# UPDATE products SET price = 104 WHERE name = 'table';
UPDATE 1
products_db=# UPDATE products SET price = 4 WHERE name = 'ladder';
UPDATE 1
products_db=# DELETE FROM products WHERE price < 25
products_db-# SELECT * FROM products;
ERROR:  syntax error at or near "SELECT"
LINE 2: SELECT * FROM products;
        ^
products_db=# SELECT name FROM products;
  name
--------
 chair
 stool
 table
 ladder
(4 rows)

products_db=# SELECT * FROM products;
 id |  name  | price | can_be_returned
----+--------+-------+-----------------
  1 | chair  |    24 | f
  2 | stool  |  5.99 | t
  3 | table  |   104 | f
  4 | ladder |     4 | f
(4 rows)

products_db=# DELETE FROM products WHERE price < 25;
DELETE 3
products_db=# UPDATE products SET price = 124 WHERE name = 'table';
UPDATE 1
products_db=# UPDATE products SET can_be_returned = true WHERE name = 'table';
UPDATE 1