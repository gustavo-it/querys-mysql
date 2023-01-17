-- UPDATE com JOINs

-- Vamos supor que você precisa alterar a bio de determinado usuário

-- SELECT u.first_name, p.bio from users u
UPDATE users u 
INNER JOIN profiles p 
ON p.user_id = u.id
SET p.bio = CONCAT(p.bio, ' atualizado') 
WHERE u.first_name = 'Maria';

SELECT * FROM profiles p ;