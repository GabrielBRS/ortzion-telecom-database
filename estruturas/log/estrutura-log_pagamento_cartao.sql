CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_pagamento_cartao
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_pagamento_cartao(
    id_log_pagamento_cartao BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_pagamento_cartao'),
    data_pagamento_cartao TIMESTAMP WITHOUT TIME ZONE,
    status_transacao_cartao_credito VARCHAR(255),
    email_portador_cartao_credito VARCHAR(255),
    id_transacao_cartao_credito VARCHAR(255),
    codigo_transacao_cartao_credito VARCHAR(255),
    valor_pagamento_cartao NUMERIC(10,2)
);