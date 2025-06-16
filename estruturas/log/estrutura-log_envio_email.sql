CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_envio_email
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_envio_email(
    id_log_envio_email BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_envio_email'),
    data_envio_email TIMESTAMP WITHOUT TIME ZONE,
    ip_dispositivo_usuario_agente INTEGER,
    total_mensagens BIGINT,
    mensagens_enviadas BIGINT,
    mensagens_nao_enviadas BIGINT,
    id_tipo_pessoa INTEGER,
    id_subjectus BIGINT
);