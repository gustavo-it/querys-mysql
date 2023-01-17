-- 1) Insira 5 usuários
INSERT INTO users (first_name, last_name, email, password_hash, salary)
VALUES
('Laura', 'Luisa', 'laura@laura.com.br', 'asdasd', 5000.94),
('Sophia', 'Melo', 'sophia@melo.com.br', 'sadasd', 5000.94),
('Heloísa', 'franchesca', 'heloisa@fran.com.br', 'hghghg', 5000.94),
('Maitê', 'Proença', 'maite@maite.com.br', 'vcbfdgd', 5000.94),
('Eloá', 'Liz', 'Eloá@liz.com.br', 'ytuyyrq', 5000.94);

-- 2) Insira 5 perfis para os usuários inseridos
INSERT INTO profiles
(bio, description, user_id)
SELECT
CONCAT('Bio de ', u.first_name),
CONCAT('Description de ', u.first_name),
u.id
FROM users u
WHERE id > 105;

-- 3) Insira permissões (roles) para os usuários inseridos
INSERT INTO user_roles 
(user_id, role_id)
SELECT
u.id, (SELECT id FROM roles ORDER BY RAND() LIMIT 1)
FROM users u
WHERE id > 105;

-- 4) Selecione os últimos 5 usuários em ordem decrescente
SELECT * FROM users u 
ORDER BY id DESC
LIMIT 5;

-- 5) Atualize o último usuário inserido
UPDATE users SET first_name = 'Eloá atualizada'
WHERE id = 111;

-- 6) Remova uma permissão de algum usuário
DELETE FROM user_roles WHERE user_id = 111;

DELETE FROM user_roles
WHERE 
user_id = (SELECT id FROM users WHERE first_name = 'Heloísa') AND 
role_id = (SELECT id FROM roles WHERE name = 'GET');

-- 7) Remova um usuário que tem a permissão PUT
DELETE u
FROM users u
INNER JOIN user_roles ur ON u.id = ur.user_id
INNER JOIN roles r ON ur.role_id = r.id
WHERE r.name = 'PUT' and u.id = 102;

-- 8) Selecione usuários com perfis e permissões (obrigatório)
SELECT u.id uid, p.id pid,
p.bio, u.first_name, ur.user_id 
FROM users u 
INNER JOIN profiles p
ON u.id = p.user_id 
INNER JOIN user_roles ur
ON u.id = ur.user_id;

-- 9) Selecione usuários com perfis e permissões (Opcional)
SELECT u.id uid, u.first_name, ur.user_id, p.bio
FROM users u 
LEFT JOIN profiles p
ON u.id = p.user_id
LEFT JOIN user_roles ur
ON u.id = ur.user_id
LEFT JOIN roles r ON ur.role_id = r.id;

-- 10) Selecione usuários com perfis e permissões ordenando por salário
SELECT u.id uid, p.id pid,
p.bio, u.first_name, ur.user_id, u.salary  
FROM users u 
INNER JOIN profiles p
ON u.id = p.user_id 
INNER JOIN user_roles ur
ON u.id = ur.user_id
ORDER BY salary ASC;