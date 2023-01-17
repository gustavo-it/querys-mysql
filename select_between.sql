-- Between seleciona um range

select * from users
where 
created_at BETWEEN '2020-06-12 17:38:52'
AND '2020-09-04 19:06:55';

/* 
 No exemplo acima, o between vai retornar usuário cadastrados entre a data que definimos.
*/

SELECT * FROM users u 
WHERE 
id BETWEEN 50
AND 
100;