-- SELECT customer_id, COUNT(visit_id) count_no_trans 
-- FROM Visits
-- WHERE visit_id NOT IN (
--     SELECT visit_id FROM Transactions
-- )
-- GROUP BY customer_id

SELECT V.customer_id, COUNT(V.visit_id) count_no_trans 
FROM Visits V LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY customer_id