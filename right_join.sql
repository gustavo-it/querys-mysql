-- RIGHT JOIN
-- Agora vamos buscar todos os registros da tabela profile
-- mesmo que não exista uma relação com users.

SELECT u.id uid, p.id pid,
p.bio, u.first_name
FROM users u 
RIGHT JOIN profiles p 
ON u.id = p.user_id;