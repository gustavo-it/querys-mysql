-- INSERT de dados para a tabela user_roles

INSERT INTO user_roles (user_id, role_id)
VALUES
(518, 4);

-- Estamos fazendo uma sub-query entre parênteses e estamos utilizando o order by
-- para nos retornar um valor aleatório da tabela roles com o limit para retornar
-- somente 1 valor.

INSERT INTO user_roles (user_id, role_id)
SELECT
id, (SELECT id FROM roles ORDER BY RAND() limit 1)
FROM users;

SELECT * FROM user_roles ur ;