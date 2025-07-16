# Write your MySQL query statement below
SELECT u.user_id as buyer_id , u.join_date , COUNT(o.buyer_id) as orders_in_2019
FROM Users as u
LEFT JOIN Orders as o on u.user_id = buyer_id
AND o.order_date BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY u.user_id, u.join_date
