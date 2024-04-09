SELECT publisher, COUNT(title)
FROM (SELECT num_pages, publisher_id, title
FROM books
WHERE num_pages > 50) as b
LEFT JOIN publishers as p ON p.publisher_id=b.publisher_id
GROUP BY publisher
ORDER BY count DESC
LIMIT 1