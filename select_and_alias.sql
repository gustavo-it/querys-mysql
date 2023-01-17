-- SELECT de duas colunas e apelidos (alias)

-- Selecionando todas as colunas
SELECT * FROM users;

/*
Geralmente quando você vê algumas palavras após uma tabela ou coluna, essas palavras
podem ser apelidos. Por exemplo:
SELECT * FROM users u; -> nesse caso o 'u' é um apelido para a tabela 'users'. 

Uma outra maneira de utilizar apelidos é utilizando a palavra 'as'
SELECT * FROM users as u;

Podemos passar o apelido entre aspas também. Mas não é muito recomendado
*/

-- Selecionando apenas algumas colunas ou uma
select email, id from users u;

-- Definindo um apelido para colunas
-- Nesse caso, quando os dados da coluna forem apresentado será trocado pelo apelido que definimos

select first_name nome, last_name sobrenome, created_at "criado em"
from users u;