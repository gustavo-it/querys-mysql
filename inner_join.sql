-- INNER JOIN
-- O select que fizemos anteriormente é um exemplo de INNER JOIN
-- Retorna informações de duas ou mais tabelas que estejam relacionadas através
-- da igualdade entre os atributos das tabelas (no caso anterior, id e user_id)

SELECT u.id uid, p.id pid, -- Selecionando as colunas a serem apresentadas
p.bio, u.first_name
FROM users u
INNER JOIN profiles p -- Especificando a segunda tabela
ON u.id = p.user_id; -- Indicando os campos que precisam ser iguais, para trazer os dados