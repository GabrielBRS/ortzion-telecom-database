CREATE SCHEMA IF NOT EXISTS mercado_virtual;

CREATE SEQUENCE IF NOT EXISTS mercado_virtual.seq_id_configuracao_estoque_mercadoria_virtual
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists mercado_virtual.configuracao_estoque_mercadoria_virtual(
    id_configuracao_estoque_mercadoria_virtual INTEGER PRIMARY KEY DEFAULT nextval('log.seq_id_configuracao_estoque_mercadoria_virtual'),
    tipo_pessoa INTEGER,
    id_subjectus BIGINT,
    id_estoque_mercadoria_virtual BIGINT
);