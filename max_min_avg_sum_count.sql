-- Funções de Agregação - max, min, avg, sum e count + GROUP BY
/*
max -> retorna o valor máximo
min -> retorna o valor menor
avg -> retorna a média
sum -> soma
*/

SELECT 
max(salary) max_salary, 
min(salary) min_salary,
avg(salary) avg_salary,
SUM(salary) as sum_salary,
count(salary) as count_salary 
FROM users u
WHERE first_name = 'Carly';

SELECT 
u.first_name,
max(salary) max_salary, 
min(salary) min_salary,
avg(salary) avg_salary,
SUM(salary) as sum_salary,
count(salary) as count_salary
FROM users u
GROUP BY first_name;