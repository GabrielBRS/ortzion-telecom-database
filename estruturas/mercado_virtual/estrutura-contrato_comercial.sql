CREATE SCHEMA IF NOT EXISTS mercado_virtual;

CREATE SEQUENCE IF NOT EXISTS mercado_virtual.seq_id_contrato_comercial
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists mercado_virtual.canal_mensageria(
    id_contrato_comercial INTEGER PRIMARY KEY DEFAULT nextval('mercado_virtual.seq_id_contrato_comercial'),
    tipo_pessoa INTEGER,
    id_subjectus BIGINT,
    nome_subjectus VARCHAR(255),
    documento_subjectus VARCHAR(255),
    id_canal_mensageria BIGINT,
    nome_canal_mensageria VARCHAR(255),
    quantidade_canal_mensageria_comprado BIGINT,
    data_contratacao TIMESTAMP WITHOUT TIME ZONE,

    foreign key (id_canal_mensageria) references mercado_virtual.canal_mensageria(id_canal_mensageria)
);