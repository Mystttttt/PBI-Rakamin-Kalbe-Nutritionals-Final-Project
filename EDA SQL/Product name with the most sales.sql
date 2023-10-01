-- Nama product dengan penjualan terbanyak
SELECT
    p."Product Name",
    SUM(t.totalamount) as total_amount,
    SUM(t.qty) as total_quantity
FROM product p
JOIN transaction t ON p."productid" = t."productid"
GROUP BY p."Product Name"
ORDER BY total_amount DESC
LIMIT 1;