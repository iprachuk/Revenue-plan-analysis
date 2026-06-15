WITH
  revenue_CTE AS (
  SELECT
    s.date,
    SUM(p.price) AS revenue
  FROM
    `DA.order` o
  JOIN
    `DA.product` p
  ON
    o.item_id = p.item_id
  JOIN
    `DA.session` s
  ON
    o.ga_session_id = s.ga_session_id
  GROUP BY
    s.date ),
  final_union AS(
  SELECT
    date,
    0 AS predict,
    revenue
  FROM
    revenue_CTE
  UNION ALL
  SELECT
    date,
    predict,
    0 AS revenue
  FROM
    `DA.revenue_predict` rp ),
  final AS(
  SELECT
    date,
    SUM(predict) AS predict,
    SUM(revenue) AS revenue
  FROM
    final_union
  GROUP BY
    date )
SELECT
  date,
  SUM(revenue) OVER(ORDER BY final.date) AS running_revenue,
  SUM(predict) OVER(ORDER BY final.date) AS running_predict,
  SUM(revenue) OVER(ORDER BY final.date) / SUM(predict) OVER(ORDER BY final.date) * 100 AS goal_percent
FROM
  final
