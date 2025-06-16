CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_carga_email
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_carga_email(
    id_log_carga_email BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_carga_email'),
    data_carga_email TIMESTAMP WITHOUT TIME ZONE,
    total_cargas BIGINT
);