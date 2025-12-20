

SELECT
  DATE(updated_at)  AS purchase_date,
  COUNT(id)         AS order_count,
  SUM(charge_total) AS spent
FROM orders
WHERE updated_at >= COALESCE(
        NULLIF({{ dateRange1.value.start }}, '')::timestamp,
        TIMESTAMP '2021-01-01'
      )
  AND updated_at < COALESCE(
        NULLIF({{ dateRange1.value.end }}, '')::timestamp,
        TIMESTAMP '2021-06-01'
      )
GROUP BY DATE(updated_at)
ORDER BY purchase_date;
