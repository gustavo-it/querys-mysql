-- INSERT IGNORE

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

-- Como a relação da tabela user_roles é de muitos para muitos.
-- Um usuário pode ter várias permissões, porém caso você execute a consulta acima
-- pode ser retornado um erro. Pois a primary key tem que ser única.
-- Então a consulta vai tentar adicionar uma primary key que já existe.
-- Vamos corrigir isso com o INSERT IGNORE
-- Com isso ele vai ignorar os erros.

INSERT IGNORE INTO user_roles (user_id, role_id)
SELECT
id, (SELECT id FROM roles ORDER BY RAND() limit 1)
FROM users ORDER BY rand() LIMIT 5; -- Adicionando um limite de dados inseridos

SELECT * FROM user_roles ur ;