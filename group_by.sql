-- GROUP BY

-- Imagine que desejo saber quantos usuários tenho com o mesmo first_name
-- Quando tenho esses valores repetidos, eu posso agrupa-los e usar a função COUNT()
-- para contar esses valores.

-- NÃO PDEMOS AGRUPAR REGISTROS QUE POSSUEM VALORES DIFERENTES, COMO NO CASO DO ID
-- PRECISO TER SOMENTE OS VALORES QUE SERÃO AGRUPADOS.
-- OU SEJA, PRECISO SOLICITAR SOMENTE A COLUNA FIRST_NAME, EM NOSSO CASO.

SELECT first_name, COUNT(id) total FROM users
GROUP BY first_name
ORDER BY total DESC;