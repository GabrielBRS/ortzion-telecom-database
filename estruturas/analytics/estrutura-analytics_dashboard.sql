CREATE SCHEMA IF NOT EXISTS analytics;

CREATE SEQUENCE IF NOT EXISTS analytics.seq_id_dashboard
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists analytics.dashboard(
    id_dashboard BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_carga_email'),
    tipo_pessoa INTEGER,
    id_subjectus BIGINT,
    link_dashboard VARCHAR(255)
);