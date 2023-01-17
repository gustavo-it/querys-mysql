-- SELECT LIKE
-- É utilizado para buscar por uma determinada string dentro de um campo
-- com valores textuais.

-- Buscando usuários que terminam com a letra 'a'. Com o caractere coringa '%'
SELECT * FROM users 
WHERE first_name LIKE  '%a';

-- Buscando usuários que começam com a letra 'a'.
SELECT * FROM users u 
WHERE first_name LIKE 'a%';

-- Podemos utilizar o underline para que a consulta pule somente 1 caractere.
-- Com '%' ele acaba pulando vários caracteres.
SELECT * FROM users u 
WHERE first_name LIKE 'j_cob';