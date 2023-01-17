-- pk -> id name

CREATE TABLE roles (
	id INT UNSIGNED auto_increment NOT NULL,
	name VARCHAR(255) NOT NULL,
	CONSTRAINT roles_pk PRIMARY KEY (id)
);