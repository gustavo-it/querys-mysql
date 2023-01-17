-- pk -> id bio description fk -> user_id

CREATE TABLE profiles (
	id INT UNSIGNED auto_increment NOT NULL,
	bio TEXT NULL,
	description TEXT NULL,
	user_id INT UNSIGNED NULL,
	CONSTRAINT profiles_pk PRIMARY KEY (id),
	CONSTRAINT profiles_user_id UNIQUE KEY (user_id),
	CONSTRAINT profiles_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);