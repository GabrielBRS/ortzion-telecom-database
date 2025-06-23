CREATE SCHEMA IF NOT EXISTS 'security';

CREATE SEQUENCE IF NOT EXISTS 'security'.seq_id_dashboard
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

CREATE TABLE IF NOT EXISTS 'security'.multiconta (
    id_usuario BIGINT NOT NULL,
    tipo_pessoa INTEGER NOT NULL,
    id_subjectus BIGINT NOT NULL,
    PRIMARY KEY (id_usuario, tipo_pessoa, id_subjectus), -- Composite primary key from MulticontaId
    FOREIGN KEY (id_usuario) REFERENCES security.acesso_usuario(id_usuario) -- Foreign key back to AcessoUsuario
);