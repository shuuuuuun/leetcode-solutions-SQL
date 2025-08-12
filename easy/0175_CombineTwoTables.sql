"#175. Combine Two Tables" 
# Write your MySQL query statement below
SELECT p.firstName , p.lastName , a.city , a.state
FROM Person as p
LEFT join Address a on p.personID = a.personID