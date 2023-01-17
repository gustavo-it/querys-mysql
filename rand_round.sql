-- RAND e ROUND
-- ROUND -> vai arredondar um número que você passar. Ele espera receber 2 números
-- O primeiro é o que você deseja exibir, o segundo são os números de casa decimais.
-- RAND-> gera um número aleatório
ALTER TABLE users ADD salary DECIMAL(15, 2) NULL; -- Adicionando um campo salário

-- Configurando um salário aleatório para todos os registros
UPDATE users SET salary = ROUND(RAND() * 10000, 2); 

SELECT * FROM users u ;