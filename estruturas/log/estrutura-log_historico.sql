CREATE SCHEMA IF NOT EXISTS log;

CREATE SEQUENCE IF NOT EXISTS log.seq_id_log_historico
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    CACHE 1;

create table if not exists log.log_historico(
    id_log_historico BIGINT PRIMARY KEY DEFAULT nextval('log.seq_id_log_historico'),
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

      ---
    --- FOREIGN KEY CONSTRAINTS
    ---
    CONSTRAINT fk_log_historico_envio_email
        FOREIGN KEY (id_log_envio_email)
        REFERENCES log.log_envio_email (id_log_envio_email),

    CONSTRAINT fk_log_historico_envio_sms
        FOREIGN KEY (id_log_envio_sms)
        REFERENCES log.log_envio_sms (id_log_envio_sms),

    CONSTRAINT fk_log_historico_envio_whatsap
        FOREIGN KEY (id_log_envio_whatsap)
        REFERENCES log.log_envio_whatsap (id_log_envio_whatsap),

    CONSTRAINT fk_log_historico_pagamento_pix
        FOREIGN KEY (id_log_pagamento_pix)
        REFERENCES log.log_pagamento_pix (id_log_pagamento_pix),

    CONSTRAINT fk_log_historico_pagamento_cartao
        FOREIGN KEY (id_log_pagamento_cartao)
        REFERENCES log.log_pagamento_cartao (id_log_pagamento_cartao),

    CONSTRAINT fk_log_historico_pagamento_boleto
        FOREIGN KEY (id_log_pagamento_boleto)
        REFERENCES log.log_pagamento_boleto (id_log_pagamento_boleto),

    CONSTRAINT fk_log_historico_carga_canal_mensageria
        FOREIGN KEY (id_carga_canal_mensageria)
        REFERENCES log.log_carga_canal_mensageria (id_carga_canal_mensageria),

    CONSTRAINT fk_log_historico_envio_canal_mensageria
        FOREIGN KEY (id_envio_canal_mensageria)
        REFERENCES log.log_envio_canal_mensageria (id_envio_canal_mensageria),

    CONSTRAINT fk_log_historico_acesso_usuario_autoritativo
        FOREIGN KEY (id_acesso_usuario_autoritativo)
        REFERENCES seguranca.acesso_usuario_autoritativo (id_acesso_usuario_autoritativo)
);