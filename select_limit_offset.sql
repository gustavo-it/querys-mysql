-- SELECT LIMIT e OFFSET
-- LIMIT -> limita a quantidade de valores
-- OFFSET -> Ele salta uma quantidade de linhas

-- Indicamos o número de registros que queremos obter após o uso de LIMIT
SELECT id, first_name nome, last_name sobrenome, email uemail
FROM users u 
WHERE id BETWEEN 10 AND 100
ORDER BY id ASC
LIMIT 5;

SELECT id, first_name nome, last_name sobrenome, email uemail
FROM users u 
WHERE id BETWEEN 10 AND 100
ORDER BY id ASC
LIMIT 5 OFFSET 4;

-- Nesse caso estamos passando o offset através do LIMIT
-- LIMIT offset, limit
SELECT id, first_name nome, last_name sobrenome, email uemail
FROM users u 
WHERE id BETWEEN 10 AND 100
ORDER BY id ASC
LIMIT 1, 2;