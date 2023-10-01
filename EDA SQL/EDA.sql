-- Umur rata - rata customer berdasarkan marital status
SELECT
    sub."Marital Status",
    ROUND(AVG(sub.age)) AS average_age
FROM (
    SELECT
        "Marital Status",
        age
    FROM customer c
    WHERE "Marital Status" IS NOT NULL 
    AND "Marital Status" <> ''
) AS sub
GROUP BY sub."Marital Status";

-- Umur rata - rata berdasarkan gender
select 
	case 
		when gender = 0 then 'Female'
		when gender = 1 then 'Male'
		else 'Unknown'
	end as gender,
	ROUND(avg(age)) as average_age
from customer c 
where gender is not null 
group by gender

--Nama store dgn Qty terbanyak
SELECT
    s.storename,
    SUM(t.qty) as total_quantity
FROM store s
JOIN transaction t 
ON s.storeid = t.storeid 
GROUP BY s.storename 
ORDER BY total_quantity DESC 
FETCH FIRST 1 ROW only;


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
