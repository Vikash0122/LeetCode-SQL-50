SELECT user_id, 
    CONCAT(UPPER(left(name,1)), LOWER(right(name, LENGTH(name)-1))) AS name
FROM Users
ORDER BY user_id;
