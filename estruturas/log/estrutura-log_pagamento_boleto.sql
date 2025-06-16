CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_pagamento_boleto
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_pagamento_boleto(
    id_log_pagamento_boleto BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_pagamento_boleto'),
    valor_pagamento_boleto NUMERIC(10,2),
    status_pagamento_boleto INTEGER,
    data_pagamento_boleto TIMESTAMP WITHOUT TIME ZONE
);