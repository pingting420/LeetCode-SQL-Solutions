SELECT
	p.product_name AS product_name,
	t.product_id,
	t.order_id,
	t.order_date
FROM
	Products p,
(
    SELECT
        *,
	    rank()over(PARTITION BY product_id ORDER BY order_date DESC) AS rk
    FROM
        Orders
) as t
WHERE
t.product_id = p.product_id
AND rk = 1
ORDER BY
	product_name,
	product_id,
	order_id