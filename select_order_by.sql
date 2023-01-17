-- SELECT ORDER BY
-- Ele é capaz de ordernar nossa consulta

-- Ordenando de maneira crescente pelo campo created_at
SELECT id, first_name nome, last_name as sobrenome, email as umeail, created_at data_criacao
FROM users u
WHERE id BETWEEN 15 and 20
ORDER BY created_at ASC;

-- Ordenando de maneira descrecente pelo campo created_at
SELECT id, first_name nome, last_name as sobrenome, email as umeail, created_at data_criacao
FROM users u
WHERE id BETWEEN 15 and 20
ORDER BY created_at DESC;