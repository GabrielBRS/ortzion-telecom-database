CREATE SCHEMA IF NOT EXISTS mercado_virtual;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_canal_mensageria
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_envio_whatsap(
    id_canal_mensageria INTEGER PRIMARY KEY DEFAULT nextval('log.seq_id_canal_mensageria'),
    nome_canal_mensageria VARCHAR(255),
    descricao_canal_mensageria VARCHAR(255),
    preco_mercadoria_virtual NUMERIC(10,2),
    logo_svg_code TEXT
);