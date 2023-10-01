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