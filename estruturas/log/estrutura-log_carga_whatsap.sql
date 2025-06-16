CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_carga_whatsap
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_carga_whatsap(
    id_log_carga_whatsap BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_carga_whatsap'),
    data_carga_whatsap TIMESTAMP WITHOUT TIME ZONE,
    total_cargas BIGINT
);