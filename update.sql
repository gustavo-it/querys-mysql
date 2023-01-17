-- UPDATE
-- Atualiza registros
-- Com UPDATE sempre devemos utilizar o WHERE 
-- Para indicar qual registro desejamos atualizar.

SELECT * FROM users u ;

-- SET -> indica o campo que queremos atualizar
UPDATE users SET first_name = 'Gustavo',
last_name = 'Silva'
WHERE id = 100;