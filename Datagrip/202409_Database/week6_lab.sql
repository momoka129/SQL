SHOW DATABASES;

USE testing;

SHOW TABLES;

-- q2
SELECT purchases.PDATE, purchases.PPRICE, books.TITLE
FROM books, customers, purchases
WHERE customers.CNAME = 'John'
AND customers.CID = purchases.CID
AND purchases.BOOKID = books.BOOKID;

-- q3
SELECT books.TITLE, pricing.FORMAT
From customers, books, pricing, purchases
WHERE customers.CNAME = 'Terry'
AND books.BOOKID = pricing.BOOKID
AND customers.CID = purchases.CID
AND purchases.BOOKID = pricing.BOOKID;

-- q4
SELECT sum(PRICE) AS sum_price_of_paperback
FROM pricing
WHERE pricing.FORMAT = 'paperback';

-- q5
SELECT DISTINCT customers.CNAME
FROM customers, purchases
WHERE purchases.PPRICE > 110
AND customers.CID = purchases.CID;

-- q6
SELECT books.CATEGORY, books.TITLE
FROM books, pricing
WHERE pricing.PRICE = 45
AND books.BOOKID = pricing.BOOKID;

-- q7
SELECT DISTINCT customers.*
FROM customers, books, purchases
WHERE books.YEAR > 2000
AND books.BOOKID = purchases.BOOKID
AND customers.CID = purchases.CID;











-- q7 wrong answer
SELECT *
FROM customers
JOIN purchases ON customers.CID = purchases.CID
join books on purchases.BOOKID = books.BOOKID
WHERE books.YEAR > 2000;

SELECT DISTINCT customers.CID, customers.CNAME, customers.AGE
FROM customers
JOIN purchases ON customers.CID = purchases.CID
JOIN books ON books.BOOKID = purchases.BOOKID
WHERE books.YEAR > 2000;

