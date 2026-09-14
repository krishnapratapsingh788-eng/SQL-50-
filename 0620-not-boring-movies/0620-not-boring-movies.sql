# Write your MySQL query statement below
select * from cinema
WHERE id % 2 = 1 and description != 'boring'
ORDER BY rating DESC;
