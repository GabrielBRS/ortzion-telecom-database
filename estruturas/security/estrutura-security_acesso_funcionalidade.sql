CREATE SCHEMA IF NOT EXISTS security;

CREATE SEQUENCE IF NOT EXISTS security.seq_id_acesso_usuario
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS security.seq_id_acesso_grupo
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

CREATE TABLE IF NOT EXISTS "security".acesso_grupo_usuario (
    id_usuario BIGINT NOT NULL, -- Foreign key referencing security.acesso_usuario
    id_grupo BIGINT NOT NULL,   -- Foreign key referencing security.acesso_grupo
    PRIMARY KEY (id_usuario, id_grupo), -- Composite primary key to ensure unique user-group pairs
    -- Define the foreign key constraints:
    -- id_usuario must exist in the 'acesso_usuario' table
    FOREIGN KEY (id_usuario) REFERENCES "security".acesso_usuario(id_usuario),
    -- id_grupo must exist in the 'acesso_grupo' table
    FOREIGN KEY (id_grupo) REFERENCES "security".acesso_grupo(id_grupo)
);
