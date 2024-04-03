SELECT u.name, t.training_id, COUNT(t.user_training_id) AS count
FROM users1 AS u
JOIN training_details AS t ON t.user_id = u.user_id
GROUP BY u.name, t.training_id
HAVING COUNT(t.user_training_id) > 1