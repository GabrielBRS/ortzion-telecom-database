CREATE SCHEMA IF NOT EXISTS sistema_telecomunicacoes;

CREATE SEQUENCE IF NOT EXISTS sistema_telecomunicacoes.seq_id_canal_mensageria_agendado
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists sistema_telecomunicacoes.canal_mensageria_agendado(
    id_canal_mensageria_agendado INTEGER PRIMARY KEY DEFAULT nextval('sistema_telecomunicacoes.seq_id_canal_mensageria_agendado'),
    destinatario VARCHAR(255),
    id_canal_mensageria BIGINT,
    disparo_agendado INTEGER,
    data_envio TIMESTAMP WITHOUT TIME ZONE,
    status VARCHAR(255),

    foreign key (id_canal_mensageria) references mercado_virtual.canal_mensageria(id_canal_mensageria)
);