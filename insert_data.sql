-- Inserindo dados na tabela

-- Listando as tabelas
show tables;

-- Descreve as colunas da tabela
describe users;

-- Inserir registros na base de dados
-- 				   colunas onde vou inserir os dados
insert into users (first_name, last_name, email, password_hash)
-- valores que serão inseridos na tabela
VALUES ('Maria', 'Fernanda', 'maria_fernanda@email.com', 'a_hash');
-- As colunas não precisam estar na ordem. mas os valores precisam estar na ordem
-- das colunas. Exemplo (email, last_name_, first_name)
-- VALUES ('email@email.com', 'ultimo nome', 'primeiro_nom');

-- Selecionando uma tabela
SELECT * FROM users;

-- Criando vários registros de uma só vez
insert into users (first_name, last_name, email, password_hash)
VALUES 
('Fernanda', 'Moreira', 'fernanda_moreira@email.com', 'b_hash'),
('Otávia', 'Moreira', 'otavia_moreira@email.com', 'c_hash'),
('Andréia', 'Vasconcelos', 'andreia_vasconcelos@email.com', 'd_hash'),
('Madu', 'Tavares', 'madu_tavares@email.com', 'e_hash');