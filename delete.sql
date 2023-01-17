-- DELETE 
-- DELETE É feito com WHERE
-- O mais recomendado é utilizar o 'id' para apagar a linha.

DELETE * FROM users WHERE

-- Inserindo um dado que será apagado
INSERT into users (first_name, last_name, email, password_hash)
VALUES ('teste', 'teste', 'teste@hotmail.com.br', 'teste');

select * from users u ;

DELETE FROM users WHERE id = 106;