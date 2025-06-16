CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_envio_sms
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_envio_sms(
    id_log_envio_sms BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_envio_sms'),
    data_envio_sms TIMESTAMP WITHOUT TIME ZONE,
    ip_dispositivo_usuario_agente INTEGER,
    total_mensagens BIGINT,
    mensagens_enviadas BIGINT,
    mensagens_nao_enviadas BIGINT,
    id_tipo_pessoa INTEGER,
    id_subjectus BIGINT
);