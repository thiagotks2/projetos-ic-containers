-- Seed de Imobiliária, Tipos, Modos e Usuário Suporte

-- 1. Imobiliária Suporte (ID: 1)
INSERT INTO
    `imobiliarias` (
        `id`,
        `nome`,
        `razao_social`,
        `cnpj`,
        `creci`,
        `email`,
        `telefone_fixo`,
        `whatsapp`,
        `endereco`,
        `numero`,
        `bairro`,
        `cidade_id`,
        `estado`,
        `cep`,
        `ativa`,
        `ativa_login`,
        `cliente_ativo`,
        `mostrar`,
        `cadastro`
    )
VALUES (
        1,
        'Imobiliária Suporte',
        'Imobiliária Suporte LTDA',
        '00.000.000/0001-00',
        '1234-J',
        'suporte@promentor.com.br',
        '(41) 3000-0000',
        '(41) 99999-9999',
        'Rua Suporte',
        '100',
        'Centro',
        1,
        'PR',
        '80000-000',
        1,
        1,
        1,
        1,
        NOW()
    )
ON DUPLICATE KEY UPDATE
    `ativa` = 1,
    `ativa_login` = 1,
    `cliente_ativo` = 1;

-- 2. Imobiliária Serramar (ID: 1775) para testes do Zolt
INSERT INTO
    `imobiliarias` (
        `id`,
        `nome`,
        `razao_social`,
        `cnpj`,
        `creci`,
        `email`,
        `telefone_fixo`,
        `whatsapp`,
        `ativa`,
        `ativa_login`,
        `cliente_ativo`,
        `mostrar`,
        `cadastro`
    )
VALUES (
        1775,
        'Serramar Imóveis',
        'Serramar Imóveis LTDA',
        '00.000.000/0001-99',
        '5678-J',
        'serramar@serramarimoveis.com.br',
        '(41) 3453-1000',
        '(41) 99999-8888',
        1,
        1,
        1,
        1,
        NOW()
    )
ON DUPLICATE KEY UPDATE
    `ativa` = 1,
    `ativa_login` = 1,
    `cliente_ativo` = 1;

-- 3. Tipos essenciais de imóveis para a imobiliária 1 e 1775
INSERT INTO
    `tipos` (
        `imobiliaria_id`,
        `tipo`,
        `sigla`
    )
VALUES (1, 'APARTAMENTO', 'AP'),
    (1, 'CASA', 'CA'),
    (1, 'SOBRADO', 'SO'),
    (1, 'TERRENO', 'TE'),
    (1, 'COBERTURA', 'CO'),
    (1, 'COMERCIAL', 'COM'),
    (1775, 'APARTAMENTO', 'AP'),
    (1775, 'CASA', 'CA'),
    (1775, 'SOBRADO', 'SO'),
    (1775, 'TERRENO', 'TE'),
    (1775, 'COBERTURA', 'CO'),
    (1775, 'COMERCIAL', 'COM'),
ON DUPLICATE KEY UPDATE
    `tipo` = VALUES(`tipo`);

-- 4. Modos de trabalhar essenciais
INSERT INTO
    `modosdetrabalhar` (
        `imobiliaria_id`,
        `modo`,
        `mostrar`,
        `enviar_para_portais`
    )
VALUES (1, 'Disponível', 1, 1),
    (1, 'Em cadastramento', 0, 0),
    (1, 'Vendido', 0, 0),
    (1, 'Cancelado', 0, 0),
    (1775, 'Disponível', 1, 1),
    (
        1775,
        'Em cadastramento',
        0,
        0
    ),
    (1775, 'Vendido', 0, 0),
    (1775, 'Cancelado', 0, 0)
ON DUPLICATE KEY UPDATE
    `mostrar` = VALUES(`mostrar`);

-- 5. Nível 99 (Suporte / Master)
INSERT INTO
    `niveis` (
        `id`,
        `nivel`,
        `permissao_alterar`
    )
VALUES (99, 'Suporte Master', 1)
ON DUPLICATE KEY UPDATE
    `nivel` = 'Suporte Master',
    `permissao_alterar` = 1;

-- 6. Usuário Suporte
INSERT INTO
    `usuarios` (
        `nome`,
        `login`,
        `senha`,
        `ativo`,
        `imobiliaria_id`,
        `nivel`
    )
VALUES (
        'Suporte',
        'suporte',
        'ic*4286',
        1,
        1,
        99
    )
ON DUPLICATE KEY UPDATE
    `senha` = 'ic*4286',
    `ativo` = 1,
    `nivel` = 99;

-- 7. Permissões de Usuários de Banco Local (Root sem senha + promentMysqlH3)
CREATE USER IF NOT EXISTS 'root' @'%' IDENTIFIED
WITH
    mysql_native_password BY '';

ALTER USER 'root' @'%' IDENTIFIED WITH mysql_native_password BY '';

GRANT ALL PRIVILEGES ON *.* TO 'root' @'%' WITH GRANT OPTION;

CREATE USER IF NOT EXISTS 'promentMysqlH3' @'%' IDENTIFIED
WITH
    mysql_native_password BY 'Us1*Pro4286';

GRANT ALL PRIVILEGES ON `infocenterhost1`.* TO 'promentMysqlH3' @'%';

FLUSH PRIVILEGES;