SELECT author, COUNT(rating), ROUND(AVG(rating), 2)
FROM ratings AS r
LEFT JOIN books AS b ON b.book_id=r.book_id
SELECT author, COUNT(rating), ROUND(AVG(rating), 2)
FROM ratings AS r
LEFT JOIN books AS b ON b.book_id=r.book_id
LEFT JOIN authors AS a ON a.author_id=b.author_id
GROUP BY author
HAVING COUNT(rating) >= 50
ORDER BY COUNT DESC
LIMIT 1


