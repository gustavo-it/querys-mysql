-- NOW() on update now()
-- Assim que atualizar o registro o valor também será atualizado

ALTER TABLE users ADD update_at DATETIME DEFAULT NOW() on update NOW() NOT NULL;