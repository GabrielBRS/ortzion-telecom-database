CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_carga_sms
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_carga_sms(
    id_log_carga_sms BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_carga_sms'),
    data_carga_sms TIMESTAMP WITHOUT TIME ZONE,
    total_cargas BIGINT
);