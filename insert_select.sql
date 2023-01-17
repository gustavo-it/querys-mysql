-- INSERT com SELECT 
-- Insere valores em uma tabela usando outra

/*
Neste exemplo abaixo, estou fazendo quase quem um for na tabela profiles.
A minha consulta vai percorrer a tabela 'users' adicionando a 'profiles' os
seguintes valores 'bio', 'description' e 'id' da tabela 'users' ao 'user_id'
da tabela 'profiles'.
*/
INSERT INTO profiles 
(bio, description, user_id)
select 'bio', 'description', id from users;

DELETE FROM profiles ;

-- Realizando uma concatenação
INSERT INTO profiles 
(bio, description, user_id)
SELECT
CONCAT('Bio de ', first_name),
CONCAT('Description de', ' ', first_name),
id 
FROM users;

SELECT * FROM profiles p ;
SELECT * FROM users u ;