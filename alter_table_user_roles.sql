-- Adicionando created_at e update_at

ALTER TABLE user_roles ADD created_at DATETIME DEFAULT NOW() NOT NULL;
ALTER TABLE user_roles ADD update_at DATETIME DEFAULT now() on update now() NOT NULL;