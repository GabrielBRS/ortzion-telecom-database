CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_pagamento_pix
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_pagamento_pix(
    id_log_pagamento_pix BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_pagamento_pix'),
    valor_pagamento_pix NUMERIC(10,2),
    status_pagamento_pix INTEGER,
    data_pagamento_pix TIMESTAMP WITHOUT TIME ZONE
);