CREATE SCHEMA IF NOT EXISTS 'security';

CREATE SEQUENCE IF NOT EXISTS 'security'.seq_id_usuario
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

CREATE TABLE IF NOT EXISTS 'security'.acesso_usuario (
    id_usuario BIGINT PRIMARY KEY DEFAULT nextval('security.seq_id_acesso_usuario'),
    login_unico VARCHAR(255) UNIQUE, -- 'unique = true' in Java
    documento_usuario VARCHAR(255) UNIQUE NOT NULL, -- 'unique = true, nullable = false' in Java
    senha_usuario VARCHAR(255) NOT NULL, -- 'nullable = false' in Java
    status_usuario INTEGER NOT NULL, -- 'nullable = false' in Java
    id_pessoa BIGINT, -- Foreign key for the OneToOne relationship with Pessoa
    FOREIGN KEY (id_pessoa) REFERENCES cadastral.pessoa(id_pessoa)
);