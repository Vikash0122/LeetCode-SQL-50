SELECT id, movie, description, rating
FROM Cinema c
WHERE MOD(c.id,2)=1 AND c.description != 'boring'
ORDER BY rating DESC;
