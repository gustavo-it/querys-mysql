-- SELECT IN 
-- É usado para especificar vários valores que queremos obter

SELECT * FROM users u 
WHERE id IN (10, 15, 20, 25)
and first_name in ('keelie', 'wayne');