SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- Seed de Imobiliária, Tipos, Modos, Níveis e Usuário Suporte

-- 1. Imobiliária Suporte (ID: 1)
INSERT INTO `imobiliarias` (
    `id`, `nome`, `razao_social`, `cpf_cnpj`, `creci`, 
    `email`, `telefone_fixo`, `whatsapp`, 
    `endereco`, `numero`, `bairro`, `cidade_id`, `estado`, `cep`,
    `ativa`, `ativa_login`, `cliente_ativo`
) VALUES (
    1, 'Imobiliária Suporte', 'Imobiliária Suporte LTDA', '00.000.000/0001-00', '1234-J',
    'suporte@promentor.com.br', '(41) 3000-0000', '(41) 99999-9999',
    'Rua Suporte', '100', 'Centro', NULL, 'PR', '80000-000',
    1, 1, 1
) ON DUPLICATE KEY UPDATE 
    `ativa` = 1, `ativa_login` = 1, `cliente_ativo` = 1;

-- 2. Tipos essenciais de imóveis para a imobiliária 1
INSERT INTO `tipos` (
    `imobiliaria_id`, `tipo`, `sigla`
) VALUES 
    (1, 'APARTAMENTO', 'AP'),
    (1, 'CASA', 'CA'),
    (1, 'SOBRADO', 'SO'),
    (1, 'TERRENO', 'TE'),
    (1, 'COBERTURA', 'CO'),
    (1, 'COMERCIAL', 'COM')
ON DUPLICATE KEY UPDATE `tipo` = VALUES(`tipo`);

-- 3. Modos de trabalhar essenciais para a imobiliária 1
INSERT INTO `modosdetrabalhar` (
    `imobiliaria_id`, `modo`, `mostrar`, `enviar_para_portais`
) VALUES 
    (1, 'Disponível', 1, 1),
    (1, 'Em cadastramento', 0, 0),
    (1, 'Vendido', 0, 0),
    (1, 'Cancelado', 0, 0)
ON DUPLICATE KEY UPDATE `mostrar` = VALUES(`mostrar`);

-- 4. Níveis de Acesso
INSERT INTO `niveis` (`id`, `nivel`, `permissao_alterar`) VALUES
    (1, 'Administrador', 1),
    (2, 'Corretor', 0),
    (3, 'Gerente', 1),
    (4, 'Corretor Cadastrador', 1),
    (5, 'Oferta Ativa', 0),
    (6, 'Administrador CasaPR', 1),
    (7, 'Corretor parceiro', 0),
    (8, 'Corretor Cadastrador Individual', 1),
    (9, 'Coordenador', 0),
    (99, 'Suporte Master', 1)
ON DUPLICATE KEY UPDATE `nivel` = VALUES(`nivel`), `permissao_alterar` = VALUES(`permissao_alterar`);

-- 5. Usuário Suporte
INSERT INTO `usuarios` (
    `nome`, `login`, `senha`, `ativo`, `imobiliaria_id`, `nivel`
) VALUES (
    'Suporte', 'suporte', 'ic*4286', 1, 1, 99
) ON DUPLICATE KEY UPDATE 
    `senha` = 'ic*4286', `ativo` = 1, `nivel` = 99;

-- 6. Permissões de Usuários de Banco Local (Root sem senha + promentMysqlH3)
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED WITH mysql_native_password BY '';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

CREATE USER IF NOT EXISTS 'promentMysqlH3'@'%' IDENTIFIED WITH mysql_native_password BY 'Us1*Pro4286';
GRANT ALL PRIVILEGES ON `infocenterhost1`.* TO 'promentMysqlH3'@'%';

FLUSH PRIVILEGES;

SET FOREIGN_KEY_CHECKS = 1;
