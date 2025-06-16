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
    id_log_carga_email BIGINT,
    id_log_carga_sms BIGINT,
    id_log_carga_whatsap BIGINT,
    id_log_envio_email BIGINT,
    id_log_envio_sms BIGINT,
    id_log_envio_whatsap BIGINT,
    id_log_pagamento_pix BIGINT,
    id_log_pagamento_cartao BIGINT,
    id_log_pagamento_boleto BIGINT,
    id_pagarme VARCHAR(255),
    codigo_pagarme VARCHAR(255),
    id_acesso_usuario_autoritativo BIGINT,
    documento_usuario_autoritativo VARCHAR(255),
    data_criacao_log_historico TIMESTAMP WITHOUT TIME ZONE,
    data_atualizacao_log_historico TIMESTAMP WITHOUT TIME ZONE,

    foreign key (id_log_carga_email) references log.log_carga_email(id_log_carga_email),
    foreign key (id_log_carga_sms) references log.log_carga_sms(id_log_carga_sms),
    foreign key (id_log_carga_whatsap) references log.log_carga_whatsap(id_log_carga_whatsap),
    foreign key (id_log_envio_email) references log.log_envio_email(id_log_envio_email),
    foreign key (id_log_envio_sms) references log.log_envio_sms(id_log_envio_sms),
    foreign key (id_log_envio_whatsap) references log.log_envio_whatsap(id_log_envio_whatsap),
    foreign key (id_log_pagamento_pix) references log.log_pagamento_pix(id_log_pagamento_pix),
    foreign key (id_log_pagamento_cartao) references log.log_pagamento_cartao(id_log_pagamento_cartao),
    foreign key (id_log_pagamento_boleto) references log.log_pagamento_boleto(id_log_pagamento_boleto),
    foreign key (id_acesso_usuario_autoritativo) references security.acesso_usuario(id_usuario)

);