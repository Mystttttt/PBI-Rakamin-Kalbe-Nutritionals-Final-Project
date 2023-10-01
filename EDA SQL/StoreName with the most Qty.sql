--Store dgn Qty terbanyak
SELECT
    s.storename,
    SUM(t.qty) as total_quantity
FROM store s
JOIN transaction t 
ON s.storeid = t.storeid 
GROUP BY s.storename 
ORDER BY total_quantity DESC 
FETCH FIRST 1 ROW only;