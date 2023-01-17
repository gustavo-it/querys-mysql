-- SELECT mais de uma tabela

-- Selecionando o id da tabela users, id da tabela profiles
-- Dessa forma, para cada profile na tabela profiles, ele vai repetir o mesmo dado
-- para todos os registros na tabela users.
-- Em nosso caso, ele vai repetir o primeiro profile mais de 100 vezes.
-- Fará o mesmo para o segundo profile, terceiro...
SELECT u.id uid, p.id pid 
FROM users u, profiles p ;

-- Fazendo o SELECT para apresentar os dados desde que o id da tabela 'users'
-- Seja o mesmo da coluna user_id da tabela 'profiles'
-- Lembrando que id é a primary key de users e user_id é a foreign key de 'profiles'
-- Que tem como referência o id da tabela 'users'.
SELECT u.id uid, p.id pid,
p.bio, u.first_name 
FROM users u, profiles p 
WHERE u.id = p.user_id;