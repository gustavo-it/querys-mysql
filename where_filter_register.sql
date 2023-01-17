-- WHERE para filtrar os registros

-- NÃO PODEMOS UTILIZAR O UPDATE OU DELETE SEM A CLÁUSULA WHERE
-- SE VOCÊ FIZER UM DELETE SEM A CONDIÇÃO, TODOS OS SEUS REGISTROS SERÃO APAGADOS
-- WHERE funciona com select, update, delete

-- WHERE filtra registros
select * from users u
where id=2;

-- Buscando id maior que 2
select * from users u
where id > 2;

-- Buscando id maior ou igual a 2
select * from users u
where id >= 2;

-- Fazendo buscas onde o id é diferente de 2
select * from users u
where id <> 2; -- sinal de diferente
select * from users u 
where id != 2;

-- Fazendo buscas através de uma string/texto
SELECT * FROM users u
WHERE first_name = "Fernanda";

-- Fazendo buscas onde a data é maior que
SELECT * FROM users u 
WHERE created_at > '2023-01-06 18:04:52';

-- Combinando dados
SELECT * FROM users u 
WHERE id > 1 AND last_name = "Moreira";

SELECT * FROM users u 
WHERE last_name = "Moreira" OR id < 3;