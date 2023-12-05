SELECT * FROM Coffeeshop
ORDER BY transaction_id ASC;

--1. Hitung total penjualan (total_transaction) per product_category.
SELECT
    product_category,
    SUM(total_transaction) AS [total_transaction]
FROM Coffeeshop
GROUP BY product_category
ORDER BY [total_transaction] DESC;

--2. Temukan rata-rata unit_price per store_location.
SELECT
    store_location,
    AVG(unit_price) AS [average_unit_price]
FROM Coffeeshop
GROUP BY store_location;

--3. Tampilkan total penjualan (total_transaction) per bulan.
SELECT
    MONTH(transaction_date) AS [month],
    SUM(total_transaction) AS [total_transaction]
FROM Coffeeshop
GROUP BY MONTH(transaction_date)
ORDER BY [month];

--4. Hitung total penjualan (total_transaction) per store_location dan product_category.
SELECT
    store_location,
    product_category,
    SUM(total_transaction) AS [total_transaction]
FROM Coffeeshop
GROUP BY store_location, product_category
ORDER BY store_location,total_transaction DESC;

--5. Temukan total penjualan (total_transaction) tertinggi dan produk apa yang menyumbangnya.
SELECT TOP 1
    product_type,
    SUM(total_transaction) AS [total_transaction]
FROM Coffeeshop
GROUP BY product_type
ORDER BY [total_transaction] DESC;

SELECT TOP 1
    product_type,
    total_transaction
FROM Coffeeshop
ORDER BY [total_transaction] DESC;

--6. Hitung rata-rata unit_price per product_type untuk setiap store_location.
SELECT
    store_location,
    AVG(unit_price) AS [average_unit_price]
FROM Coffeeshop
GROUP BY store_location;

--7. Tampilkan total penjualan (total_transaction) per jam pada tanggal tertentu.
SELECT 
    DATEPART(HOUR, transaction_time) AS hour, 
    SUM(total_transaction) AS total_sales
FROM Coffeeshop
WHERE transaction_date = '01/01/23'
GROUP BY DATEPART(HOUR, transaction_time);

--8. Temukan rata-rata unit_price per product_type.
SELECT
    product_type,
    AVG(unit_price) AS [average_unit_price]
FROM Coffeeshop
GROUP BY product_type;

--9. Temukan total penjualan (total_transaction) per store_location pada tanggal tertentu.
SELECT store_location, SUM(total_transaction) AS total_sales
FROM Coffeeshop
WHERE transaction_date = '01/01/23'
GROUP BY store_location;

--10. Hitung rata-rata unit_price per product_type pada tanggal tertentu.
SELECT product_type, AVG(unit_price) AS average_price
FROM Coffeeshop
WHERE transaction_date = '01/01/23'
GROUP BY product_type;



