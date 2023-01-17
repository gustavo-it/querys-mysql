-- DELETE com JOINs

-- Agora queremos fazer um delete utilizando o JOIN

DELETE p FROM users u
INNER JOIN profiles p 
ON p.user_id = u.id
WHERE u.first_name = 'Maria';