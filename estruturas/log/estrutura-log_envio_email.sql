CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_envio_email
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_envio_email(
    id_log_envio_email BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_envio_email'),
    tipo_pessoa INTEGER,
    id_subjectus BIGINT,
    documento_subjectus VARCHAR(255),
    id_log_envio_email BIGINT,
    id_log_envio_sms BIGINT,
    id_log_envio_whatsap BIGINT,
    id_log_pagamento_pix BIGINT,
    id_log_pagamento_cartao BIGINT,
    id_log_pagamento_boleto BIGINT,
    id_pagarme VARCHAR(255),
    codigo_pagarme VARCHAR(255),
    tipo_carga_canal_mensageria INTEGER,
    id_carga_canal_mensageria BIGINT,
    tipo_envio_canal_mensageria INTEGER,
    id_envio_canal_mensageria BIGINT,
    id_acesso_usuario_autoritativo BIGINT,
    documento_usuario_autoritativo VARCHAR(255),
    data_criacao_log_historico TIMESTAMP WITHOUT TIME ZONE,
    data_atualizacao_log_historico TIMESTAMP WITHOUT TIME ZONE
);