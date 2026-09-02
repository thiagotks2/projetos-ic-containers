-- infocenterhost1.acessos1188 definition

CREATE TABLE `acessos1188` (
    `id` int NOT NULL DEFAULT '0',
    `imovel_id` int NOT NULL DEFAULT '0',
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `tipo` varchar(50) DEFAULT NULL,
    `cidade` varchar(100) DEFAULT NULL,
    `tipo_registro` varchar(50) NOT NULL DEFAULT '',
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `operacao` varchar(5) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- infocenterhost1.acessos_portais definition

CREATE TABLE `acessos_portais` (
    `id` int NOT NULL AUTO_INCREMENT,
    `tipo_registro` varchar(50) NOT NULL DEFAULT '',
    `portal` varchar(50) NOT NULL DEFAULT '',
    `user_fingerprint` varchar(100) DEFAULT NULL,
    `imovel_id` int NOT NULL DEFAULT '0',
    `data` datetime DEFAULT NULL,
    `imovel_cadastro` datetime DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `acessos_portais_imovel` (`imovel_id`),
    KEY `idx_acessos_portais_data` (`data`)
) ENGINE = InnoDB AUTO_INCREMENT = 6412 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.acessosrapidos definition

CREATE TABLE `acessosrapidos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `sigla` varchar(45) DEFAULT NULL,
    `descricao` varchar(150) NOT NULL,
    `caminho` varchar(255) DEFAULT NULL,
    `faq_id` int DEFAULT NULL,
    `descricao2` text,
    `palavras_chave` varchar(500) DEFAULT NULL,
    `criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `ativo` tinyint(1) DEFAULT '1',
    `link` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = latin1;

-- infocenterhost1.acoes_marketing definition

CREATE TABLE `acoes_marketing` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL DEFAULT '0',
    `acao` varchar(255) DEFAULT NULL,
    `data` date DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 17417 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.adesaozero definition

CREATE TABLE `adesaozero` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(100) NOT NULL,
    `email` varchar(200) NOT NULL DEFAULT '',
    `telefone` varchar(50) DEFAULT NULL,
    `usuario` varchar(50) NOT NULL DEFAULT '',
    `senha` varchar(100) NOT NULL,
    `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `email` (`email`),
    UNIQUE KEY `usuario` (`usuario`)
) ENGINE = InnoDB AUTO_INCREMENT = 238 DEFAULT CHARSET = latin1;

-- infocenterhost1.api_login definition

CREATE TABLE `api_login` (
    `username` varchar(100) NOT NULL,
    `key` varchar(150) NOT NULL,
    `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`username`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- infocenterhost1.arquivoslancamento definition

CREATE TABLE `arquivoslancamento` (
    `id` int NOT NULL AUTO_INCREMENT,
    `arquivo` varchar(100) NOT NULL DEFAULT '',
    `ordem` int NOT NULL DEFAULT '0',
    `lancamento_id` int NOT NULL DEFAULT '0',
    `descricao` text,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.atualizar_mongodb definition

CREATE TABLE `atualizar_mongodb` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int DEFAULT NULL,
    `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `erro` tinyint DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 366682 DEFAULT CHARSET = latin1;

-- infocenterhost1.avaliacoes definition

CREATE TABLE `avaliacoes` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cliente_id` varchar(255) DEFAULT NULL,
    `data` date DEFAULT NULL,
    `hora` time DEFAULT NULL,
    `data_angariacao` date DEFAULT NULL,
    `corretor_id` int DEFAULT NULL,
    `mensagem` text,
    `status` varchar(45) DEFAULT NULL,
    `origem` varchar(45) DEFAULT NULL,
    `imovel_id` int DEFAULT NULL,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 999 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.avisos definition

CREATE TABLE `avisos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `assunto` varchar(100) NOT NULL,
    `mensagem` longtext,
    `status` varchar(45) DEFAULT 'Não lida',
    `remetente` varchar(45) DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `corretor_id` int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 18 DEFAULT CHARSET = latin1;

-- infocenterhost1.balnearios definition

CREATE TABLE `balnearios` (
    `id` int NOT NULL AUTO_INCREMENT,
    `balneario` varchar(60) NOT NULL,
    `estado` varchar(2) NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 14 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.bancos definition

CREATE TABLE `bancos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `banco` varchar(60) NOT NULL,
    `codigo` varchar(3) NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 21 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.bancos_financiamento definition

CREATE TABLE `bancos_financiamento` (
    `id` int NOT NULL AUTO_INCREMENT,
    `banco` varchar(45) NOT NULL,
    `url` varchar(255) NOT NULL,
    `img` varchar(255) DEFAULT NULL,
    `ativo` tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = latin1;

-- infocenterhost1.banners definition

CREATE TABLE `banners` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(100) NOT NULL,
    `descricao` text,
    `link` varchar(255) DEFAULT NULL,
    `arquivo` varchar(45) DEFAULT NULL,
    `ativo` tinyint(1) DEFAULT '1',
    `secao` varchar(45) DEFAULT 'inicial',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = latin1;

-- infocenterhost1.banners_cobranca definition

CREATE TABLE `banners_cobranca` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(45) DEFAULT NULL,
    `ativo` int DEFAULT NULL,
    `arquivo` varchar(100) DEFAULT NULL,
    `link` varchar(225) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 35 DEFAULT CHARSET = latin1;

-- infocenterhost1.banners_portal definition

CREATE TABLE `banners_portal` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(100) NOT NULL,
    `descricao` text,
    `link` varchar(255) DEFAULT NULL,
    `arquivo` varchar(105) DEFAULT NULL,
    `ativo` tinyint(1) DEFAULT '1',
    `secao` varchar(45) DEFAULT 'inicial',
    `portal` varchar(45) DEFAULT NULL,
    `data_inicio` date DEFAULT NULL,
    `data_fim` date DEFAULT NULL,
    `mobile` tinyint(1) DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 41 DEFAULT CHARSET = latin1;

-- infocenterhost1.benchmark definition

CREATE TABLE `benchmark` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `imobiliaria_id` int NOT NULL,
    `imovel_id` int NOT NULL,
    `secao` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
    `tempo_execucao` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1895 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.bloquear_referencia definition

CREATE TABLE `bloquear_referencia` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `imobiliaria_id` int NOT NULL,
    `corretor_id` int NOT NULL,
    `referencia` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 802 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.categorias_arquivo definition

CREATE TABLE `categorias_arquivo` (
    `id` int NOT NULL AUTO_INCREMENT,
    `categoria` varchar(45) DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 848 DEFAULT CHARSET = latin1;

-- infocenterhost1.ci_sessions definition

CREATE TABLE `ci_sessions` (
    `session_id` varchar(40) NOT NULL DEFAULT '0',
    `ip_address` varchar(45) NOT NULL DEFAULT '0',
    `user_agent` varchar(120) NOT NULL,
    `last_activity` int unsigned NOT NULL DEFAULT '0',
    `user_data` text NOT NULL,
    `prevent_update` int DEFAULT NULL,
    PRIMARY KEY (`session_id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.cidades definition

CREATE TABLE `cidades` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cidade` varchar(60) NOT NULL,
    `estado` varchar(2) NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `cadastrada` tinyint(1) DEFAULT NULL,
    `slug` varchar(75) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `cidades_cidade_IDX` (`cidade`, `estado`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4902 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.clientes_arquivos definition

CREATE TABLE `clientes_arquivos` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `cliente_id` int DEFAULT NULL,
    `imobiliaria_id` int NOT NULL,
    `arquivo` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
    `descricao` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 25161 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.cobrancas definition

CREATE TABLE `cobrancas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int DEFAULT NULL,
    `mes_ano` date NOT NULL,
    `descricao` text,
    `valor` double DEFAULT NULL,
    `data_vencimento` date NOT NULL,
    `detalhes` text,
    `desativador` int DEFAULT NULL,
    `status` varchar(45) DEFAULT NULL,
    `data_emissao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `nosso_numero` varchar(45) DEFAULT NULL,
    `seu_numero` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 33 DEFAULT CHARSET = latin1;

-- infocenterhost1.composicoesconferidas definition

CREATE TABLE `composicoesconferidas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `composicao` varchar(60) NOT NULL DEFAULT '',
    `site` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `composicoesconferidas_composicao` (`composicao`)
) ENGINE = InnoDB AUTO_INCREMENT = 5540 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.composicoesexportacao definition

CREATE TABLE `composicoesexportacao` (
    `id` int NOT NULL AUTO_INCREMENT,
    `site` varchar(50) DEFAULT NULL,
    `composicao` varchar(100) DEFAULT NULL,
    `composicao2` varchar(100) DEFAULT NULL,
    `imovelweb_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `composicoesexportacao_composicao` (`composicao`),
    KEY `composicoesexportacao_site` (`site`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4615 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.configuracoes_whatsapp definition

CREATE TABLE `configuracoes_whatsapp` (
    `id` int NOT NULL AUTO_INCREMENT,
    `telefone` varchar(13) DEFAULT NULL,
    `nome` varchar(100) DEFAULT NULL,
    `usuario_id` int DEFAULT NULL,
    `instancia_id` varchar(100) DEFAULT NULL,
    `token` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = latin1;

-- infocenterhost1.envio_boasvindas definition

CREATE TABLE `envio_boasvindas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `texto` text,
    `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `imobiliaria_id` int NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 107 DEFAULT CHARSET = latin1;

-- infocenterhost1.envio_orientacoes definition

CREATE TABLE `envio_orientacoes` (
    `id` int NOT NULL AUTO_INCREMENT,
    `texto` text,
    `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `imobiliaria_id` int NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1067 DEFAULT CHARSET = latin1;

-- infocenterhost1.equipes definition

CREATE TABLE `equipes` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(50) DEFAULT NULL,
    `ordem` tinyint DEFAULT '99',
    `imobiliaria_id` int DEFAULT NULL,
    `filtros` json DEFAULT NULL COMMENT 'Filtros de imóveis usados para direcionar os leads para a equipe',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 167 DEFAULT CHARSET = latin1;

-- infocenterhost1.estatisticas_banner definition

CREATE TABLE `estatisticas_banner` (
    `id` int NOT NULL AUTO_INCREMENT,
    `tipo_registro` varchar(50) NOT NULL DEFAULT '',
    `ip` varchar(50) DEFAULT NULL,
    `user_fingerprint` varchar(100) DEFAULT NULL,
    `banner_id` int NOT NULL DEFAULT '0',
    `imobiliaria_id` int DEFAULT NULL,
    `banner` json DEFAULT NULL,
    `acesso` json DEFAULT NULL,
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `portal` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3313 DEFAULT CHARSET = latin1;

-- infocenterhost1.estatisticas_contato definition

CREATE TABLE `estatisticas_contato` (
    `id` int NOT NULL AUTO_INCREMENT,
    `tipo_registro` varchar(50) NOT NULL DEFAULT '',
    `user_fingerprint` varchar(100) DEFAULT NULL,
    `imovel_id` int DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `imovel` json DEFAULT NULL,
    `acesso` json DEFAULT NULL,
    `contato` json DEFAULT NULL,
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `site` varchar(50) DEFAULT NULL,
    `email_para` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1395 DEFAULT CHARSET = latin1;

-- infocenterhost1.faq definition

CREATE TABLE `faq` (
    `id` int NOT NULL AUTO_INCREMENT,
    `descricao` varchar(150) NOT NULL,
    `html` text,
    `arquivo` varchar(45) DEFAULT NULL,
    `video` varchar(255) DEFAULT NULL,
    `link` varchar(255) DEFAULT NULL,
    `palavras_chave` varchar(500) DEFAULT NULL,
    `acessos` int DEFAULT '0',
    `criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 38 DEFAULT CHARSET = latin1;

-- infocenterhost1.fasesdaobra definition

CREATE TABLE `fasesdaobra` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int DEFAULT NULL,
    `fase` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 54 DEFAULT CHARSET = latin1;

-- infocenterhost1.formasdeatendimento definition

CREATE TABLE `formasdeatendimento` (
    `id` int NOT NULL AUTO_INCREMENT,
    `forma` varchar(60) NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 496 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.fotoslancamento definition

CREATE TABLE `fotoslancamento` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `foto` varchar(100) NOT NULL DEFAULT '',
    `descricao_id` int DEFAULT NULL,
    `ordem` int DEFAULT NULL,
    `lancamento_id` int NOT NULL DEFAULT '0',
    `tipo` varchar(45) DEFAULT NULL,
    `categoria_id` int DEFAULT NULL,
    PRIMARY KEY (`Id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.funil_arquivos definition

CREATE TABLE `funil_arquivos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `corretor_id` int NOT NULL,
    `arquivo` varchar(100) NOT NULL,
    `descricao` text,
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `funil_lead_id` int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2853 DEFAULT CHARSET = latin1;

-- infocenterhost1.funil_etiquetas definition

CREATE TABLE `funil_etiquetas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `etiqueta_id` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `funil_id` int NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1233 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.funil_log_etapas definition

CREATE TABLE `funil_log_etapas` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `funil_lead_id` int NOT NULL,
    `etapa_id` int NOT NULL,
    `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `etapa_anterior` int DEFAULT NULL,
    `corretor_id` int NOT NULL,
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1962025 DEFAULT CHARSET = latin1;

-- infocenterhost1.funil_log_status definition

CREATE TABLE `funil_log_status` (
    `id` int NOT NULL AUTO_INCREMENT,
    `funil_lead_id` int NOT NULL,
    `corretor_id` int NOT NULL,
    `status_id` int NOT NULL,
    `data` date DEFAULT NULL,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `texto` text NOT NULL,
    `valor` double DEFAULT NULL,
    `categoria_id` int NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 22732 DEFAULT CHARSET = latin1;

-- infocenterhost1.funil_status definition

CREATE TABLE `funil_status` (
    `id` int NOT NULL AUTO_INCREMENT,
    `status` varchar(20) NOT NULL,
    `status_id` int DEFAULT NULL,
    `categoria` varchar(60) NOT NULL,
    `imobiliaria_id` int NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 778 DEFAULT CHARSET = latin1;

-- infocenterhost1.imoveis_parceiros_regras definition

CREATE TABLE `imoveis_parceiros_regras` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `imobiliaria_id` int NOT NULL,
    `parceira_id` int NOT NULL,
    `filtro` json DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 13 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.imoveis_parceiros_selecionar_todos definition

CREATE TABLE `imoveis_parceiros_selecionar_todos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `parceira` varchar(45) NOT NULL,
    `ativo` tinyint(1) DEFAULT NULL,
    `tipo_venda` varchar(1) DEFAULT NULL,
    `tipo_locacao` varchar(1) DEFAULT NULL,
    `criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `tipo_temporada` varchar(1) DEFAULT NULL,
    `tipo_lancamento` varchar(1) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 205 DEFAULT CHARSET = latin1;

-- infocenterhost1.imoveis_pendentes_mongo definition

CREATE TABLE `imoveis_pendentes_mongo` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `imobiliaria_id` int NOT NULL,
    `imovel_id` int NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.imoveis_selecionados_parceiros definition

CREATE TABLE `imoveis_selecionados_parceiros` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `parceira` int NOT NULL,
    `imovel_id` int NOT NULL,
    `criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `tipo_venda` varchar(1) DEFAULT NULL,
    `tipo_locacao` varchar(1) DEFAULT NULL,
    `tipo_temporada` varchar(1) DEFAULT NULL,
    `tipo_lancamento` varchar(1) DEFAULT NULL,
    `referencia` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `idx_imoveis_selecionados_parceiros_imobiliaria_id_imovel_id` (`imobiliaria_id`, `imovel_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 16077223 DEFAULT CHARSET = latin1;

-- infocenterhost1.indicadores definition

CREATE TABLE `indicadores` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `nome` varchar(100) NOT NULL,
    `email` varchar(100) DEFAULT NULL,
    `telefone` varchar(50) DEFAULT NULL,
    `dados_bancarios` text,
    `observacoes` text,
    PRIMARY KEY (`id`),
    UNIQUE KEY `nome_unico_indicadores` (`nome`, `imobiliaria_id`),
    KEY `indicadores_imobiliaria` (`imobiliaria_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 8471 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.iw_localidades definition

CREATE TABLE `iw_localidades` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `estado` varchar(2) NOT NULL,
    `estado_iw` varchar(20) NOT NULL,
    `cidade` varchar(100) DEFAULT NULL,
    `cidade_id` int DEFAULT NULL,
    `cidade_iw` varchar(20) DEFAULT NULL,
    `bairro` varchar(100) DEFAULT NULL,
    `bairro_id` int DEFAULT NULL,
    `bairro_iw` varchar(20) DEFAULT NULL,
    `portal` varchar(20) NOT NULL DEFAULT 'imovelweb',
    PRIMARY KEY (`id`),
    KEY `IWLocalidades_id_IDX` (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161190 DEFAULT CHARSET = latin1 COMMENT = 'Banco com todas as localidades do ImovelWeb, e seus respectivos ids';

-- infocenterhost1.landing_pages definition

CREATE TABLE `landing_pages` (
    `id` int NOT NULL AUTO_INCREMENT,
    `ativa` tinyint(1) NOT NULL DEFAULT '1',
    `cores` json DEFAULT NULL,
    `descricao` text,
    `email` varchar(100) DEFAULT NULL,
    `email_cco` varchar(255) DEFAULT NULL,
    `imagem_contato` varchar(100) DEFAULT NULL,
    `imagem_inicial` varchar(100) DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `keywords` varchar(255) DEFAULT NULL,
    `listagem_descricao` text,
    `listagem_titulo` varchar(255) DEFAULT NULL,
    `modelo` tinyint DEFAULT NULL,
    `politica_de_privacidade_link` varchar(255) DEFAULT NULL,
    `scripts` text,
    `telefone` varchar(45) DEFAULT NULL,
    `titulo` varchar(255) DEFAULT NULL,
    `topo_descricao` text,
    `topo_titulo` varchar(255) DEFAULT NULL,
    `url_amigavel` varchar(100) DEFAULT NULL,
    `whatsapp` varchar(45) DEFAULT NULL,
    `adicionais` json DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `landing_pages_url_amigavel_IDX` (`url_amigavel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;

-- infocenterhost1.leads definition

CREATE TABLE `leads` (
    `idleads` int NOT NULL AUTO_INCREMENT,
    `imovel` json DEFAULT NULL,
    `dados_recebidos` json NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `origem` varchar(45) DEFAULT NULL,
    `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `cliente_id` int NOT NULL,
    `mensagem` text,
    `headers` json DEFAULT NULL,
    PRIMARY KEY (`idleads`)
) ENGINE = InnoDB AUTO_INCREMENT = 8111 DEFAULT CHARSET = latin1;

-- infocenterhost1.leads_distribuicao_log definition

CREATE TABLE `leads_distribuicao_log` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `corretor_id` int NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `cliente_id` int NOT NULL,
    `ligacao_id` int NOT NULL,
    `funil_id` int DEFAULT NULL,
    `filtro_aplicado` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.leads_distribuicao_referencia definition

CREATE TABLE `leads_distribuicao_referencia` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `corretor_id` int NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `referencia` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
    `referencia_exata` tinyint(1) NOT NULL DEFAULT '0',
    `ordem` int NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 685 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.leads_facebook_log definition

CREATE TABLE `leads_facebook_log` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `json` json NOT NULL,
    `inserted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `json_lead` json DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `json_cliente` json DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 45 DEFAULT CHARSET = latin1;

-- infocenterhost1.listas_oferta_ativa definition

CREATE TABLE `listas_oferta_ativa` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(50) DEFAULT NULL,
    `ordem` tinyint DEFAULT '99',
    `imobiliaria_id` int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1697 DEFAULT CHARSET = latin1;

-- infocenterhost1.log_cliente definition

CREATE TABLE `log_cliente` (
    `id` int NOT NULL AUTO_INCREMENT,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `tipo` varchar(100) NOT NULL,
    `responsavel_id` int NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `outros` json DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1194465 DEFAULT CHARSET = latin1;

-- infocenterhost1.log_email definition

CREATE TABLE `log_email` (
    `id` int NOT NULL AUTO_INCREMENT,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `tipo` varchar(100) NOT NULL,
    `responsavel_id` int NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `outros` json DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1899 DEFAULT CHARSET = latin1;

-- infocenterhost1.log_funil definition

CREATE TABLE `log_funil` (
    `id` int NOT NULL AUTO_INCREMENT,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `acao` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `responsavel_id` int NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `outros` json DEFAULT NULL,
    `funil_lead_id` int NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 747996 DEFAULT CHARSET = latin1;

-- infocenterhost1.log_imoveis definition

CREATE TABLE `log_imoveis` (
    `imovel_id` int DEFAULT NULL,
    `id` int NOT NULL AUTO_INCREMENT,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `acao` varchar(100) NOT NULL,
    `responsavel_id` int NOT NULL,
    `responsavel` json DEFAULT NULL,
    `imobiliaria_id` int NOT NULL,
    `old` json DEFAULT NULL,
    `new` json DEFAULT NULL,
    `origem` varchar(100) NOT NULL DEFAULT 'colibra',
    PRIMARY KEY (`id`),
    KEY `log_imoveis_imovel` (`imovel_id`, `imobiliaria_id`) USING BTREE,
    KEY `log_imoveis_imobiliaria` (`imobiliaria_id`) USING BTREE,
    KEY `log_imoveis_responsavel` (`responsavel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4769800 DEFAULT CHARSET = latin1;

-- infocenterhost1.log_mensagens definition

CREATE TABLE `log_mensagens` (
    `id` int NOT NULL AUTO_INCREMENT,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `metodo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Método usado pra envio da mensagem. whatsapp ou email',
    `imobiliaria_id` int NOT NULL,
    `conexao` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Qual tabela está conectada ao item enviado',
    `id_conexao` int NOT NULL COMMENT 'id do item a qual o envio está relacionado',
    `mensagem` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'mensagem completa enviada',
    `enviado_para` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'destinatário, pode ser um telefone ou email',
    `corretor_id` int DEFAULT NULL,
    `origem` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 173747 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- infocenterhost1.lp_fotos definition

CREATE TABLE `lp_fotos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL,
    `lp_id` int NOT NULL,
    `foto_id` int NOT NULL,
    `ordem` tinyint DEFAULT '99',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 45 DEFAULT CHARSET = latin1;

-- infocenterhost1.lp_imoveis definition

CREATE TABLE `lp_imoveis` (
    `id` int NOT NULL AUTO_INCREMENT,
    `lp_id` int NOT NULL,
    `imovel_id` int NOT NULL,
    `descricao` text NOT NULL,
    `whatsapp` varchar(45) DEFAULT NULL,
    `telefone` varchar(45) DEFAULT NULL,
    `link_tourvirtual` varchar(150) DEFAULT NULL,
    `link_video` varchar(150) DEFAULT NULL,
    `email_contato` varchar(45) DEFAULT NULL,
    `email_cco` varchar(255) DEFAULT NULL,
    `ativo` tinyint(1) DEFAULT '1',
    `titulo_topo_contato` varchar(150) DEFAULT NULL,
    `descricao_topo_contato` text,
    `titulo_imovel_contato` varchar(150) DEFAULT NULL,
    `descricao_imovel_contato` text,
    `scripts` text,
    `cores` json DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `lp_imoveis_lp_id_IDX` (`lp_id`, `imovel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = latin1;

-- infocenterhost1.modelo_propostas definition

CREATE TABLE `modelo_propostas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `titulo` varchar(255) DEFAULT NULL,
    `descricao` text NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `data_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `data_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 18 DEFAULT CHARSET = latin1;

-- infocenterhost1.new_table definition

CREATE TABLE `new_table` (
    `id` int NOT NULL AUTO_INCREMENT,
    `profissao` varchar(180) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- infocenterhost1.niveis definition

CREATE TABLE `niveis` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nivel` varchar(40) DEFAULT NULL,
    `permissao_alterar` tinyint DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.ofertas_ativas definition

CREATE TABLE `ofertas_ativas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `resultado` int NOT NULL DEFAULT '0',
    `descricao` text,
    `data` date DEFAULT NULL,
    `hora` time DEFAULT NULL,
    `cliente_id` int DEFAULT NULL,
    `corretor_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `idx_ofertas_ativas_cliente_id` (`cliente_id`),
    KEY `idx_ofertas_ativas_corretor_id` (`corretor_id`),
    KEY `idx_ofertas_ativas_inclusao` (`inclusao`),
    KEY `idx_ofertas_ativas_resultado` (`resultado`)
) ENGINE = InnoDB AUTO_INCREMENT = 178266 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.palavras_chave definition

CREATE TABLE `palavras_chave` (
    `id` int NOT NULL AUTO_INCREMENT,
    `palavra` varchar(45) NOT NULL,
    `criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`, `palavra`),
    UNIQUE KEY `palavra` (`palavra`)
) ENGINE = InnoDB AUTO_INCREMENT = 142 DEFAULT CHARSET = latin1;

-- infocenterhost1.plantoes definition

CREATE TABLE `plantoes` (
    `id` int NOT NULL AUTO_INCREMENT,
    `usuario_id` int NOT NULL,
    `inicio` datetime NOT NULL,
    `final` datetime NOT NULL,
    `repeticao_id` int NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 15521 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.portais2 definition

CREATE TABLE `portais2` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(45) NOT NULL,
    `imoveis_permitidos` tinyint DEFAULT NULL COMMENT 'Número de imóveis permitidos por imobiliária no portal.\nCaso o valor seja nulo, o portal não tem restrição de quantidade de imóveis.',
    `cidades_permitidas` varchar(45) NOT NULL COMMENT 'Cidades permitidas no portal. Caso exista mais de uma, deve ser incluída com separação por vírgula',
    `numero_destaques` tinyint DEFAULT NULL COMMENT 'Número de imóveis destacados permitidos por imobiliária no portal.\nCaso o valor seja nulo, o portal não tem restrição de quantidade de destaques.',
    `nome_completo` varchar(50) DEFAULT NULL,
    `atualizacao_acesso` int DEFAULT NULL,
    `chave_api` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;

-- infocenterhost1.portais_categorias definition

CREATE TABLE `portais_categorias` (
    `id` int NOT NULL AUTO_INCREMENT,
    `portal` varchar(45) NOT NULL,
    `categoria` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
    `slug` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
    `arquivo` varchar(100) DEFAULT NULL,
    `destaque` tinyint(1) NOT NULL DEFAULT '0',
    `tarja` tinyint(1) NOT NULL DEFAULT '0',
    `ativa` tinyint(1) NOT NULL DEFAULT '0',
    `descricao` text,
    `ordem` int DEFAULT NULL,
    `title` varchar(255) DEFAULT NULL,
    `description` text,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 25 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.portais_categorias_imoveis definition

CREATE TABLE `portais_categorias_imoveis` (
    `id` int NOT NULL AUTO_INCREMENT,
    `categoria_id` int NOT NULL,
    `imovel_id` int NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `imovel_categoria` (`categoria_id`, `imovel_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 130 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.portais_imoveis_duplicados definition

CREATE TABLE `portais_imoveis_duplicados` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL,
    `duplicado_id` varchar(45) NOT NULL,
    `portal` varchar(45) NOT NULL,
    `acao` varchar(45) NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 22 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.portais_quantidades definition

CREATE TABLE `portais_quantidades` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `imoveis_permitidos` int NOT NULL DEFAULT '10',
    `destaques` int DEFAULT '99999',
    `portal` varchar(45) DEFAULT NULL,
    `listar` tinyint(1) DEFAULT NULL,
    `data_fim_contrato` date DEFAULT NULL,
    `perfil` text,
    `link_bio` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 943 DEFAULT CHARSET = latin1;

-- infocenterhost1.processo_de_venda definition

CREATE TABLE `processo_de_venda` (
    `id` int NOT NULL AUTO_INCREMENT,
    `referencia` varchar(50) DEFAULT NULL,
    `titulo` varchar(255) DEFAULT NULL,
    `descricao` text,
    `situacao` varchar(50) DEFAULT NULL,
    `valor` float DEFAULT NULL,
    `data_inicio` date DEFAULT NULL,
    `data_conclusao` date DEFAULT NULL,
    `midia_id` int DEFAULT NULL,
    `angariador_id` int DEFAULT NULL,
    `vendedor_id` int DEFAULT NULL,
    `proprietario_id` int DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 56 DEFAULT CHARSET = latin1;

-- infocenterhost1.processo_de_venda_andamento definition

CREATE TABLE `processo_de_venda_andamento` (
    `id` int NOT NULL AUTO_INCREMENT,
    `descricao` varchar(100) DEFAULT NULL,
    `pv_id` int DEFAULT NULL,
    `corretor_id` int DEFAULT NULL,
    `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 48 DEFAULT CHARSET = latin1;

-- infocenterhost1.processo_de_venda_clientes definition

CREATE TABLE `processo_de_venda_clientes` (
    `id` int NOT NULL AUTO_INCREMENT,
    `pv_id` int DEFAULT NULL,
    `comprador_id` int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 21 DEFAULT CHARSET = latin1;

-- infocenterhost1.profissoes definition

CREATE TABLE `profissoes` (
    `id` int NOT NULL AUTO_INCREMENT,
    `profissao` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10796 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- infocenterhost1.propostas definition

CREATE TABLE `propostas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `funil_id` int DEFAULT NULL,
    `cliente_id` int NOT NULL,
    `imovel_id` int NOT NULL,
    `valor_oferecido` double NOT NULL,
    `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `data_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `data_aceite` date DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 116 DEFAULT CHARSET = latin1;

-- infocenterhost1.propostas_emitidas definition

CREATE TABLE `propostas_emitidas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `funil_id` int DEFAULT NULL,
    `cliente_id` int NOT NULL,
    `imovel_id` int NOT NULL,
    `modelo_proposta_id` int NOT NULL,
    `valor_oferecido` double DEFAULT NULL,
    `proposta` text NOT NULL,
    `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `data_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 84 DEFAULT CHARSET = latin1;

-- infocenterhost1.proprietarios_arquivos definition

CREATE TABLE `proprietarios_arquivos` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `proprietario_id` int DEFAULT NULL,
    `imobiliaria_id` int NOT NULL,
    `arquivo` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
    `descricao` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 13712 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.resultadosofertaativa definition

CREATE TABLE `resultadosofertaativa` (
    `id` int NOT NULL AUTO_INCREMENT,
    `resultado` varchar(255) NOT NULL DEFAULT '',
    `agendar` tinyint(1) DEFAULT '0',
    `manter` tinyint(1) DEFAULT '0',
    `excluir` tinyint(1) DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.tiposexportacao definition

CREATE TABLE `tiposexportacao` (
    `id` int NOT NULL AUTO_INCREMENT,
    `site` varchar(50) DEFAULT NULL,
    `tipo` varchar(60) DEFAULT NULL,
    `tipo2` varchar(100) DEFAULT NULL,
    `tipo_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `tipo_site` (`tipo`, `site`)
) ENGINE = InnoDB AUTO_INCREMENT = 36275 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.tiposexportacaoconferidos definition

CREATE TABLE `tiposexportacaoconferidos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `tipo` varchar(60) NOT NULL DEFAULT '',
    `site` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 393 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.tiposportais definition

CREATE TABLE `tiposportais` (
    `portal` varchar(50) NOT NULL,
    `tipo_imobiliaria` int NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `tipo_portal` int DEFAULT NULL,
    PRIMARY KEY (
        `portal`,
        `tipo_imobiliaria`,
        `imobiliaria_id`
    ),
    KEY `portal` (`portal`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- infocenterhost1.tokens_acesso definition

CREATE TABLE `tokens_acesso` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
    `usuario_id` int DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `data_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `data_expiracao` datetime NOT NULL,
    `ativo` tinyint DEFAULT '1',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 29 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.usuarios_ids_sistema_antigo definition

CREATE TABLE `usuarios_ids_sistema_antigo` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `usuario_id` int unsigned NOT NULL,
    `imobiliaria_id` int unsigned NOT NULL,
    `id_sistema_antigo` int NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uniq_imobiliaria_sistema_antigo` (
        `imobiliaria_id`,
        `id_sistema_antigo`
    ),
    KEY `idx_usuario_id` (`usuario_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 55985 DEFAULT CHARSET = utf8mb3;

-- infocenterhost1.whatsapp_fila definition

CREATE TABLE `whatsapp_fila` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `corretor_id` int NOT NULL,
    `mensagem` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `whatsapp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    `enviado_em` datetime DEFAULT NULL,
    `funil_id` int NOT NULL,
    `conexao` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'funil_leads',
    `id_conexao` int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 54035 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- infocenterhost1.whatsapp_session definition

CREATE TABLE `whatsapp_session` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `corretor_id` int NOT NULL,
    `whatsapp` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
    `enviado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `aprovado_em` datetime DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 15749 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.bairros definition

CREATE TABLE `bairros` (
    `id` int NOT NULL AUTO_INCREMENT,
    `bairro` varchar(60) NOT NULL,
    `cidade_id` int NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `bairros_cidade` (`cidade_id`),
    CONSTRAINT `bairros_cidade` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 40376 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.baixas_cobrancas definition

CREATE TABLE `baixas_cobrancas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cobranca_id` int NOT NULL,
    `data_pagamento` date NOT NULL,
    `valor_pago` double DEFAULT NULL,
    `data_baixa` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `observacoes` text,
    PRIMARY KEY (`id`),
    KEY `fk_baixas_cobrancas_idx` (`cobranca_id`),
    CONSTRAINT `fk_baixas_cobrancas` FOREIGN KEY (`cobranca_id`) REFERENCES `cobrancas` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = latin1;

-- infocenterhost1.imobiliarias definition

CREATE TABLE `imobiliarias` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(60) NOT NULL,
    `ativa` bit(1) NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `site` varchar(150) DEFAULT NULL,
    `telefone` varchar(50) DEFAULT NULL,
    `estado` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
    `cidade` varchar(50) DEFAULT NULL,
    `email` varchar(150) DEFAULT NULL,
    `chave` varchar(255) DEFAULT NULL,
    `marcadagua` varchar(30) DEFAULT NULL,
    `codigo_imovelweb` varchar(50) DEFAULT NULL,
    `cidade_id` int DEFAULT NULL,
    `numero_usuarios` int DEFAULT NULL,
    `ativa_login` tinyint DEFAULT NULL,
    `ativa_site` tinyint DEFAULT NULL,
    `ativa_crm` tinyint DEFAULT NULL,
    `ativa_portal` tinyint DEFAULT NULL,
    `google_analytics` varchar(100) DEFAULT NULL,
    `ddd_padrao` varchar(3) DEFAULT NULL,
    `frase_emkt` text,
    `numero_usuarios_crm` int DEFAULT NULL,
    `emkt_email` varchar(100) DEFAULT NULL,
    `emkt_servidor` varchar(255) DEFAULT NULL,
    `emkt_usuario` varchar(100) DEFAULT NULL,
    `emkt_senha` varchar(100) DEFAULT NULL,
    `emkt_porta` varchar(10) DEFAULT NULL,
    `codigo_zap` varchar(50) DEFAULT NULL,
    `creci` varchar(20) DEFAULT NULL,
    `modo_de_trabalhar` varchar(50) DEFAULT NULL,
    `data_importacao` datetime DEFAULT NULL,
    `resultado_importacao` text,
    `link_importacao` varchar(255) DEFAULT NULL,
    `erros_importacao` tinyint DEFAULT NULL,
    `sigla_parceira` varchar(50) DEFAULT NULL,
    `tema_emkt` varchar(10) DEFAULT NULL,
    `tema_impressao_ficha_visita` varchar(10) DEFAULT '1',
    `tema_impressao_DC` varchar(10) DEFAULT '1',
    `corretor_proprietarios` tinyint(1) DEFAULT NULL,
    `portais` varchar(100) DEFAULT NULL,
    `dias_atraso` tinyint DEFAULT NULL,
    `dias_transferir` int DEFAULT NULL,
    `lista_oferta_ativa_padrao` int DEFAULT NULL,
    `duplicidade` tinyint DEFAULT '1',
    `estagio_da_obra` tinyint(1) DEFAULT NULL,
    `processo_de_venda` tinyint(1) DEFAULT '0',
    `corretor_clientes` tinyint(1) DEFAULT '0',
    `contato` varchar(150) DEFAULT NULL,
    `endereco` varchar(255) DEFAULT NULL,
    `latitude` varchar(45) DEFAULT NULL,
    `longitude` varchar(45) DEFAULT NULL,
    `bairro` varchar(45) DEFAULT NULL,
    `cep` varchar(45) DEFAULT NULL,
    `telefone_fixo` varchar(45) DEFAULT NULL,
    `whatsapp` varchar(45) DEFAULT NULL,
    `telefone_plantao` varchar(45) DEFAULT NULL,
    `horario` text,
    `logomarca` varchar(45) DEFAULT NULL,
    `empresa` text,
    `facebook` varchar(150) DEFAULT NULL,
    `youtube` varchar(150) DEFAULT NULL,
    `googleplus` varchar(150) DEFAULT NULL,
    `twitter` varchar(150) DEFAULT NULL,
    `instagram` varchar(150) DEFAULT NULL,
    `linkedin` varchar(150) DEFAULT NULL,
    `blog` varchar(150) DEFAULT NULL,
    `tema` varchar(45) DEFAULT NULL,
    `oportunidades` tinyint(1) DEFAULT '0',
    `atendimento_online` varchar(255) DEFAULT NULL,
    `foto_empresa` varchar(45) DEFAULT NULL,
    `imobiliaria_corretor` varchar(45) DEFAULT NULL,
    `origem` varchar(45) DEFAULT NULL,
    `trabalhe_conosco` tinyint(1) DEFAULT '0',
    `anuncie` tinyint(1) DEFAULT '0',
    `procuramos` tinyint(1) DEFAULT '0',
    `simuladores` tinyint(1) DEFAULT '0',
    `cpf_cnpj` varchar(45) DEFAULT NULL,
    `observacoes` varchar(45) DEFAULT NULL,
    `cliente_ativo` tinyint(1) DEFAULT '0',
    `cobranca_ativa` tinyint(1) DEFAULT '0',
    `site_gerado_automaticamente` tinyint(1) DEFAULT '0',
    `nao_regerar_site` tinyint(1) DEFAULT '0',
    `modelo` varchar(45) DEFAULT NULL,
    `data_base` varchar(45) DEFAULT NULL,
    `dia_de_cobranca` varchar(45) DEFAULT NULL,
    `fase` varchar(45) DEFAULT NULL,
    `emails_de_cobranca` varchar(255) DEFAULT NULL,
    `data_inicio_avaliacao` date DEFAULT NULL,
    `data_fim_avaliacao` date DEFAULT NULL,
    `emails_proprietarios` varchar(255) DEFAULT NULL,
    `emails_contato` varchar(255) DEFAULT NULL,
    `padrao_cliente` varchar(45) DEFAULT NULL,
    `banners_painel` varchar(255) DEFAULT NULL,
    `corretor_observacoes` tinyint(1) DEFAULT '0',
    `chave_google_maps` varchar(255) DEFAULT NULL,
    `contrato` varchar(45) DEFAULT NULL,
    `mostrar_na_rede_interna` tinyint(1) DEFAULT '0',
    `razao_social` varchar(100) DEFAULT NULL,
    `responsavel_empresa` varchar(100) DEFAULT NULL,
    `responsavel_contatos` varchar(100) DEFAULT NULL,
    `telefone_responsavel_rede_interna` varchar(45) DEFAULT NULL,
    `bairro_id` int DEFAULT NULL,
    `numero` varchar(50) DEFAULT NULL,
    `complemento` varchar(50) DEFAULT NULL,
    `tipo_cobranca` varchar(45) DEFAULT NULL,
    `padrao_pagamento` varchar(45) DEFAULT NULL,
    `data_contrato` date DEFAULT NULL,
    `categoria` varchar(45) DEFAULT NULL,
    `mostrar_endereco` tinyint(1) DEFAULT '1',
    `mostrar_numero` tinyint(1) DEFAULT '1',
    `mostrar_complemento` tinyint(1) DEFAULT '1',
    `imoveis_template` tinyint(1) DEFAULT '0',
    `logomarca2` varchar(45) DEFAULT NULL,
    `celular` varchar(45) DEFAULT NULL,
    `email_rede_interna` varchar(150) DEFAULT NULL,
    `logradouro` varchar(45) DEFAULT NULL,
    `valor_cobranca` double DEFAULT NULL,
    `descricao_cobranca` varchar(255) DEFAULT NULL,
    `mongo_host` varchar(45) DEFAULT NULL,
    `mostrar_rede_interna` tinyint(1) DEFAULT '0',
    `adesaozero_tema` varchar(45) DEFAULT NULL,
    `adesaozero_topo` int DEFAULT NULL,
    `sugerir_referencia` varchar(45) DEFAULT NULL,
    `proximo_numero` int DEFAULT '1',
    `plano` varchar(45) DEFAULT NULL,
    `recaptcha_site_key` varchar(255) DEFAULT NULL,
    `recaptcha_secret_key` varchar(255) DEFAULT NULL,
    `whatsapp_chat` tinyint(1) DEFAULT '0',
    `cidade_preferencial_crm` int DEFAULT NULL,
    `sistema_externo` tinyint(1) DEFAULT '0',
    `portais_modificar_referencia` tinyint(1) DEFAULT '0',
    `score` tinyint NOT NULL DEFAULT '0',
    `score_valor` float DEFAULT NULL,
    `score_localizacao` float DEFAULT NULL,
    `score_documentacao` float DEFAULT NULL,
    `score_investimento` float DEFAULT NULL,
    `score_infraestrutura` float DEFAULT NULL,
    `score_acabamento` float DEFAULT NULL,
    `controle_visitas` tinyint NOT NULL DEFAULT '0',
    `horas_bloqueio` int DEFAULT NULL,
    `dias_cliente_laranja` int DEFAULT NULL,
    `dias_cliente_vermelho` int DEFAULT NULL,
    `limite_clientes_normais` int DEFAULT NULL,
    `limite_clientes_especiais` int DEFAULT NULL,
    `gerente_ver_proprietarios` tinyint DEFAULT NULL,
    `gerente_ver_proprietarios_formato` varchar(20) DEFAULT NULL,
    `acao_cliente` int DEFAULT NULL,
    `ativa_favoritos` tinyint NOT NULL DEFAULT '0',
    `score_conservacao` float DEFAULT NULL,
    `score_condominio` float DEFAULT NULL,
    `score_urgencia` float DEFAULT NULL,
    `score_flexibilidade` float DEFAULT NULL,
    `usar_painel_portal` tinyint(1) DEFAULT '0',
    `tema_controle_visitas` varchar(45) DEFAULT 'padrao',
    `referencias_atualizadas` text,
    `bloquear_estatisticas_para_corretores` tinyint(1) DEFAULT '0',
    `listar_em_portais` tinyint(1) DEFAULT NULL,
    `data_fim_contrato_portais` date DEFAULT NULL,
    `seo_title` varchar(500) DEFAULT NULL,
    `seo_description` varchar(500) DEFAULT NULL,
    `ogimage` varchar(45) DEFAULT NULL,
    `preferencia_lead_angariador` tinyint DEFAULT '0',
    `leads_site_notificar_whatsapp` tinyint(1) DEFAULT '0',
    `leads_facebook_notificar_whatsapp` tinyint(1) DEFAULT '0',
    `leads_vivareal_notificar_whatsapp` tinyint(1) DEFAULT '0',
    `leads_zap_notificar_whatsapp` tinyint(1) DEFAULT '0',
    `leads_imovelweb_notificar_whatsapp` tinyint(1) DEFAULT '0',
    `leads_imovelweb` tinyint(1) DEFAULT '0',
    `leads_vivareal` tinyint(1) DEFAULT '0',
    `leads_zap` tinyint(1) DEFAULT '0',
    `leads_facebook` tinyint(1) DEFAULT '0',
    `leads_site` tinyint(1) DEFAULT '1',
    `leads_olx` tinyint(1) DEFAULT '0',
    `leads_olx_notificar_whatsapp` tinyint(1) DEFAULT '0',
    `tema_mensagem_lead_whatsapp` int DEFAULT '1',
    `codigo_head` text,
    `codigo_body` text,
    `cadastro_categorias` tinyint NOT NULL DEFAULT '0',
    `smartemail` json DEFAULT NULL,
    `matriz_id` int DEFAULT NULL,
    `leads_site_cadastrar_cliente` tinyint(1) DEFAULT '0',
    `leads_facebook_cadastrar_cliente` tinyint(1) DEFAULT '1',
    `leads_vivareal_cadastrar_cliente` tinyint(1) DEFAULT '0',
    `leads_zap_cadastrar_cliente` tinyint(1) DEFAULT '0',
    `leads_imovelweb_cadastrar_cliente` tinyint(1) DEFAULT '0',
    `leads_olx_cadastrar_cliente` tinyint(1) DEFAULT '0',
    `leads_chavesnamao` tinyint(1) DEFAULT '0',
    `leads_chavesnamao_cadastrar_cliente` tinyint(1) DEFAULT '0',
    `leads_chavesnamao_notificar_whatsapp` tinyint(1) DEFAULT '0',
    `leads_origem_desconhecida` tinyint DEFAULT '0',
    `leads_origem_desconhecida_cadastrar_cliente` tinyint DEFAULT '0',
    `leads_origem_desconhecida_notificar_whatsapp` tinyint DEFAULT '0',
    `importacao_dwv` tinyint(1) DEFAULT '0',
    `videos` tinyint(1) NOT NULL DEFAULT '0',
    `marcadagua_nova` tinyint NOT NULL DEFAULT '1',
    `menu_funil` tinyint NOT NULL DEFAULT '0',
    `cadastro_edificio` tinyint(1) NOT NULL DEFAULT '0',
    `migrar_ofertaativa` tinyint(1) NOT NULL DEFAULT '0',
    `migrar_ofertaativa_dias` int DEFAULT NULL,
    `migrar_ofertaativa_corretor` int DEFAULT NULL,
    `imoveis_contratados` int NOT NULL DEFAULT '99999',
    `meta_conversion_api_pixel` varchar(100) DEFAULT NULL,
    `meta_conversion_api_token` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `usar_meta_conversion_api_site` tinyint DEFAULT '0',
    `usar_meta_conversion_api_funil` tinyint DEFAULT '0',
    `colibria_api` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `imobiliarias_cidade` (`cidade_id`),
    CONSTRAINT `imobiliarias_cidade` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1790 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.imoveis_favoritos_cliente definition

CREATE TABLE `imoveis_favoritos_cliente` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `cliente_id` int NOT NULL,
    `transacao` varchar(10) DEFAULT NULL,
    `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `origem` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `index3` (`imovel_id`, `cliente_id`),
    KEY `fk_imoveis_favoritos_cliente_1_idx` (`imobiliaria_id`),
    CONSTRAINT `fk_imoveis_favoritos_cliente_1` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2176 DEFAULT CHARSET = latin1;

-- infocenterhost1.infraestruturas definition

CREATE TABLE `infraestruturas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `infraestrutura` varchar(60) NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `id_importacao` int DEFAULT NULL,
    `edificio_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `infraestruturas_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `infraestruturas_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 128478 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.infraestruturasedificio definition

CREATE TABLE `infraestruturasedificio` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `edificio_id` int NOT NULL,
    `infraestrutura_id` int NOT NULL,
    `ordem` int unsigned DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `infraestruturasedificio_edificio` (`edificio_id`),
    KEY `infraestruturasedificio_infra` (`infraestrutura_id`),
    CONSTRAINT `infraestruturasedificio_infra` FOREIGN KEY (`infraestrutura_id`) REFERENCES `infraestruturas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5990 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.lancamentos definition

CREATE TABLE `lancamentos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome_do_empreendimento` varchar(45) DEFAULT NULL,
    `tipo_de_lancamento` varchar(45) DEFAULT NULL,
    `codigo` varchar(45) DEFAULT NULL,
    `valor_inicial` float DEFAULT NULL,
    `valor_final` float DEFAULT NULL,
    `dormitorios_inicial` int unsigned DEFAULT NULL,
    `dormitorios_final` int unsigned DEFAULT NULL,
    `area_inicial` float DEFAULT NULL,
    `area_final` float DEFAULT NULL,
    `garagem_inicial` int unsigned DEFAULT NULL,
    `garagem_final` int unsigned DEFAULT NULL,
    `incorporadora` varchar(45) DEFAULT NULL,
    `destacar` tinyint unsigned DEFAULT '0',
    `ativa` tinyint unsigned DEFAULT '1',
    `cep` varchar(10) DEFAULT NULL,
    `estado` varchar(2) DEFAULT NULL,
    `cidade` varchar(45) DEFAULT NULL,
    `bairro` varchar(45) DEFAULT NULL,
    `logradouro` varchar(20) DEFAULT NULL,
    `endereco` varchar(60) DEFAULT NULL,
    `numero` varchar(20) DEFAULT NULL,
    `imediacoes` varchar(60) DEFAULT NULL,
    `breve_descricao` text,
    `link_hotsite` varchar(200) DEFAULT NULL,
    `link_tour_virtual` varchar(200) DEFAULT NULL,
    `video_embed` text,
    `link_video` varchar(45) DEFAULT NULL,
    `descricao` text,
    `imobiliaria_id` int NOT NULL,
    `latitude` varchar(45) DEFAULT NULL,
    `longitude` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `lancamentos_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `lancamentos_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.log_selecionar_sites_parceiros definition

CREATE TABLE `log_selecionar_sites_parceiros` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int DEFAULT NULL,
    `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `log_selecionar_sites_parceiros_imobilliaria` (`imobiliaria_id`),
    CONSTRAINT `log_selecionar_sites_parceiros_imobilliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 827447 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.modosdetrabalhar definition

CREATE TABLE `modosdetrabalhar` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `modo` varchar(60) NOT NULL,
    `mostrar` tinyint unsigned NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `enviar_para_portais` tinyint(1) DEFAULT '1',
    PRIMARY KEY (`id`),
    KEY `modosdetrabalhar_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `modosdetrabalhar_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9020 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.oportunidades definition

CREATE TABLE `oportunidades` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `foto` varchar(100) NOT NULL,
    `link` varchar(255) DEFAULT NULL,
    `descricao` text,
    `titulo` varchar(255) DEFAULT NULL,
    `ordem` tinyint DEFAULT NULL,
    `ativo` tinyint(1) DEFAULT '1',
    `tourvirtual` varchar(255) DEFAULT NULL,
    `secao` varchar(100) NOT NULL DEFAULT 'inicial',
    PRIMARY KEY (`id`),
    KEY `oportunidades_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `oportunidades_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3416 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.pacotes definition

CREATE TABLE `pacotes` (
    `id` int NOT NULL AUTO_INCREMENT,
    `pacote` varchar(60) NOT NULL,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `pacotes_pacote` (`pacote`),
    KEY `pacotes_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `pacotes_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 309 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.parcerias definition

CREATE TABLE `parcerias` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `convidada` varchar(50) DEFAULT NULL,
    `convidada_id` int DEFAULT NULL,
    `contato` varchar(100) DEFAULT NULL,
    `endereco` varchar(100) DEFAULT NULL,
    `porcentagem_angariador` float DEFAULT NULL,
    `porcentagem_parceira` float DEFAULT NULL,
    `cidade` varchar(50) DEFAULT NULL,
    `cidade_id` int DEFAULT NULL,
    `estado` varchar(2) DEFAULT NULL,
    `site` varchar(150) DEFAULT NULL,
    `telefone` varchar(50) DEFAULT NULL,
    `email` varchar(100) DEFAULT NULL,
    `logo` varchar(100) DEFAULT NULL,
    `enviar_para_portais` tinyint(1) DEFAULT '0',
    `qtde_imoveis` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `parcerias_cidade` (`cidade_id`),
    KEY `parcerias_imob_convidada` (`convidada_id`),
    KEY `parcerias_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `parcerias_cidade` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `parcerias_imob_convidada` FOREIGN KEY (`convidada_id`) REFERENCES `imobiliarias` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `parcerias_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1391 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.parcerias_integracao definition

CREATE TABLE `parcerias_integracao` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int DEFAULT NULL,
    `permite` varchar(150) DEFAULT NULL,
    `divulga` varchar(150) DEFAULT NULL,
    `exibe` varchar(50) DEFAULT NULL,
    `parceira_id` int DEFAULT NULL,
    `selecionar_automaticamente` text,
    PRIMARY KEY (`id`),
    KEY `parcerias_integracao_imobiliaria` (`imobiliaria_id`),
    KEY `parcerias_integracao_parceira` (`parceira_id`),
    CONSTRAINT `parcerias_integracao_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `parcerias_integracao_parceira` FOREIGN KEY (`parceira_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1684 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.portais definition

CREATE TABLE `portais` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(45) DEFAULT NULL,
    `logo` varchar(45) DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `imobiliaria_portais` (`imobiliaria_id`),
    CONSTRAINT `imobiliaria_portais` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.portais_logos definition

CREATE TABLE `portais_logos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `portal_id` int NOT NULL,
    `logo` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `portais_logo_imobiliaria_idx` (`imobiliaria_id`),
    KEY `portais_logo_portal_idx` (`portal_id`),
    CONSTRAINT `portais_logo_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`),
    CONSTRAINT `portais_logo_portal` FOREIGN KEY (`portal_id`) REFERENCES `portais2` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 128 DEFAULT CHARSET = latin1;

-- infocenterhost1.proprietarios definition

CREATE TABLE `proprietarios` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `nome` varchar(60) NOT NULL,
    `rg` varchar(15) DEFAULT NULL,
    `cpf` varchar(15) DEFAULT NULL,
    `data_nascimento` date DEFAULT NULL,
    `nacionalidade` varchar(30) DEFAULT NULL,
    `profissao` varchar(45) DEFAULT NULL,
    `empresa` varchar(45) DEFAULT NULL,
    `estado_civil` varchar(30) DEFAULT NULL,
    `regime_casamento` varchar(45) DEFAULT NULL,
    `nome_conjuge` varchar(60) DEFAULT NULL,
    `data_nascimento_conjuge` date DEFAULT NULL,
    `rg_conjuge` varchar(15) DEFAULT NULL,
    `cpf_conjuge` varchar(15) DEFAULT NULL,
    `cep` varchar(10) DEFAULT NULL,
    `bairro_id` int DEFAULT NULL,
    `cidade_id` int DEFAULT NULL,
    `endereco` varchar(60) DEFAULT NULL,
    `ddd_telefone_residencial` varchar(2) DEFAULT NULL,
    `telefone_residencial` varchar(14) DEFAULT NULL,
    `ddd_telefone_comercial` varchar(2) DEFAULT NULL,
    `telefone_comercial` varchar(14) DEFAULT NULL,
    `ddd_fax` varchar(2) DEFAULT NULL,
    `fax` varchar(14) DEFAULT NULL,
    `ddd_celular` varchar(2) DEFAULT NULL,
    `celular` varchar(14) DEFAULT NULL,
    `email` varchar(80) DEFAULT NULL,
    `outros_contatos` text,
    `nome_conta` varchar(45) DEFAULT NULL,
    `banco_id` int DEFAULT NULL,
    `agencia` varchar(10) DEFAULT NULL,
    `numero_conta` varchar(20) DEFAULT NULL,
    `tipo_conta` varchar(30) DEFAULT NULL,
    `documento_conta` varchar(30) DEFAULT NULL,
    `status10` varchar(45) DEFAULT NULL,
    `status1` varchar(45) DEFAULT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `tipo_pessoa` varchar(50) DEFAULT NULL,
    `cnpj` varchar(50) DEFAULT NULL,
    `login` varchar(45) DEFAULT NULL,
    `senha` varchar(45) DEFAULT NULL,
    `numero_logins` int DEFAULT '0',
    `id_sistema_antigo` int DEFAULT NULL,
    `imoview_id` int DEFAULT NULL,
    `renda_familiar` varchar(45) DEFAULT NULL,
    `validacoes` text,
    `corretor_id` int DEFAULT NULL,
    `corretor2` int DEFAULT NULL,
    `categoria` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `login_proprietario` (`login`),
    KEY `proprietarios_bairro` (`bairro_id`),
    KEY `proprietarios_banco` (`banco_id`),
    KEY `proprietarios_cidade` (`cidade_id`),
    KEY `proprietarios_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `proprietarios_bairro` FOREIGN KEY (`bairro_id`) REFERENCES `bairros` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `proprietarios_banco` FOREIGN KEY (`banco_id`) REFERENCES `bancos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `proprietarios_cidade` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `proprietarios_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 149282 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.sites_parceiros_selecionar_todos definition

CREATE TABLE `sites_parceiros_selecionar_todos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `site` varchar(50) DEFAULT NULL,
    `ativo` tinyint DEFAULT NULL,
    `tipo_venda` tinyint DEFAULT NULL,
    `tipo_locacao` tinyint DEFAULT NULL,
    `tipo_lancamento` tinyint DEFAULT NULL,
    `tipo_temporada` tinyint DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `sites_parceiros_selecionar_todos_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `sites_parceiros_selecionar_todos_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 21360 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.statusdeatendimento definition

CREATE TABLE `statusdeatendimento` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `status` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
    `enviar_notificacoes` tinyint unsigned NOT NULL DEFAULT '0',
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `statusdeatendimento_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `statusdeatendimento_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 455 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.tipos definition

CREATE TABLE `tipos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `tipo` varchar(60) NOT NULL,
    `igualar` int DEFAULT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `ordem` tinyint DEFAULT NULL,
    `sigla` varchar(10) DEFAULT NULL,
    `proximo_numero` int DEFAULT '1',
    PRIMARY KEY (`id`),
    KEY `tipos_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `tipos_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 53037 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.tiposdemidia definition

CREATE TABLE `tiposdemidia` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `tipo` varchar(60) NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `tiposdemidia_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `tiposdemidia_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2313 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.usuarios definition

CREATE TABLE `usuarios` (
    `id` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(45) NOT NULL,
    `email` varchar(100) DEFAULT NULL,
    `login` varchar(45) NOT NULL,
    `senha` varchar(60) NOT NULL,
    `ativo` tinyint(1) DEFAULT NULL,
    `imobiliaria_id` int NOT NULL,
    `nivel` int NOT NULL DEFAULT '2',
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `site` varchar(255) DEFAULT NULL,
    `assinatura` text,
    `assunto` varchar(80) DEFAULT NULL,
    `bairro` varchar(50) DEFAULT NULL,
    `cep` varchar(10) DEFAULT NULL,
    `cidade_id` int DEFAULT NULL,
    `contato` varchar(80) DEFAULT NULL,
    `endereco` varchar(150) DEFAULT NULL,
    `gerente_id` int DEFAULT NULL,
    `mensagem` text,
    `status` varchar(50) DEFAULT NULL,
    `observacao` text,
    `telefone` varchar(50) DEFAULT NULL,
    `uf` varchar(2) DEFAULT NULL,
    `url` varchar(100) DEFAULT NULL,
    `apelido` varchar(50) DEFAULT NULL,
    `crm` tinyint(1) DEFAULT NULL,
    `foto` varchar(15) DEFAULT NULL,
    `foto_topo_perfil` varchar(15) DEFAULT NULL,
    `foto_perfil` varchar(15) DEFAULT NULL,
    `celular` varchar(50) DEFAULT NULL,
    `fax` varchar(50) DEFAULT NULL,
    `whatsapp` varchar(50) DEFAULT NULL,
    `cargo` varchar(50) DEFAULT NULL,
    `portais` varchar(100) DEFAULT NULL,
    `creci` varchar(45) DEFAULT NULL,
    `sindimoveis` tinyint(1) DEFAULT '0',
    `id_sistema_antigo` int DEFAULT NULL,
    `repasse_contato` tinyint(1) DEFAULT '1',
    `imobiliaria_origem` varchar(100) DEFAULT NULL,
    `api_key` varchar(150) DEFAULT NULL,
    `chave` varchar(255) DEFAULT NULL,
    `facebook` varchar(150) DEFAULT NULL,
    `instagram` varchar(150) DEFAULT NULL,
    `numero` varchar(100) DEFAULT NULL,
    `complemento` varchar(100) DEFAULT NULL,
    `latitude` varchar(100) DEFAULT NULL,
    `longitude` varchar(100) DEFAULT NULL,
    `cidade` varchar(100) DEFAULT NULL,
    `listar_em_portais` tinyint(1) DEFAULT NULL,
    `link_bio` varchar(255) DEFAULT NULL,
    `perfil` text,
    `especialidade` text,
    `listar_no_site` tinyint(1) DEFAULT NULL,
    `equipe_id` int DEFAULT NULL,
    `ordem` int DEFAULT NULL,
    `ordem_lead` int DEFAULT '0',
    PRIMARY KEY (`id`),
    UNIQUE KEY `nome_unico_imobiliaria` (`nome`, `imobiliaria_id`),
    UNIQUE KEY `usuario_imobiliaria_unico` (`nome`, `imobiliaria_id`),
    UNIQUE KEY `apelido_unico_imobiliaria` (`apelido`, `imobiliaria_id`),
    KEY `usuarios_cidade` (`cidade_id`),
    KEY `usuarios_gerente` (`gerente_id`),
    KEY `usuarios_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `usuarios_cidade` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `usuarios_gerente` FOREIGN KEY (`gerente_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `usuarios_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16003 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.videoslancamento definition

CREATE TABLE `videoslancamento` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `arquivo` varchar(100) NOT NULL DEFAULT '',
    `ordem` int DEFAULT NULL,
    `lancamento_id` int NOT NULL DEFAULT '0',
    PRIMARY KEY (`Id`),
    KEY `videoslancamento_lancamento` (`lancamento_id`),
    CONSTRAINT `videoslancamento_lancamento` FOREIGN KEY (`lancamento_id`) REFERENCES `lancamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.acessos definition

CREATE TABLE `acessos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `tipo_registro` varchar(50) NOT NULL DEFAULT '',
    `ip` varchar(50) DEFAULT NULL,
    `user_agent` varchar(255) DEFAULT NULL,
    `referrer` varchar(255) DEFAULT NULL,
    `platform` varchar(100) DEFAULT NULL,
    `imovel_id` int NOT NULL DEFAULT '0',
    `operacao` varchar(5) DEFAULT NULL,
    `tipo` varchar(50) DEFAULT NULL,
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `valor_total` double DEFAULT NULL,
    `aluguel` double DEFAULT NULL,
    `valor_alta_temporada` double DEFAULT NULL,
    `area_total` float DEFAULT NULL,
    `area_privativa` float DEFAULT NULL,
    `dormitorios` int unsigned DEFAULT NULL,
    `suite` int unsigned DEFAULT NULL,
    `garagens` int unsigned DEFAULT NULL,
    `estado` varchar(2) DEFAULT NULL,
    `cidade` varchar(100) DEFAULT NULL,
    `bairro` varchar(100) DEFAULT NULL,
    `valor_inicial` double DEFAULT NULL,
    `nome` varchar(100) DEFAULT NULL,
    `email` varchar(200) DEFAULT NULL,
    `nome_indique` varchar(100) DEFAULT NULL,
    `email_indique` varchar(200) DEFAULT NULL,
    `mensagem` text,
    `telefone` varchar(100) DEFAULT NULL,
    `data_agendar` varchar(100) DEFAULT NULL,
    `hora_agendar` varchar(100) DEFAULT NULL,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `origem` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `acessos_imobiliaria` (`imobiliaria_id`),
    KEY `acessos_imovel` (`imovel_id`),
    KEY `acessos_imovel2` (`imovel_id`, `tipo_registro`),
    KEY `idx_acessos_inclusao` (`inclusao`),
    CONSTRAINT `acessos_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 108119502 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.categorias definition

CREATE TABLE `categorias` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `categoria` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `slug` varchar(100) DEFAULT NULL,
    `arquivo` varchar(100) DEFAULT NULL,
    `destaque` tinyint(1) NOT NULL DEFAULT '0',
    `descricao` text,
    `tarja` tinyint(1) NOT NULL DEFAULT '0',
    `ordem` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `categorias_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `categorias_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 171 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.clientes definition

CREATE TABLE `clientes` (
    `id` int NOT NULL AUTO_INCREMENT,
    `ddd1` varchar(2) DEFAULT NULL,
    `telefone1` varchar(15) DEFAULT NULL,
    `tipo_telefone1` varchar(45) DEFAULT NULL,
    `nome` varchar(45) NOT NULL,
    `email` varchar(100) DEFAULT NULL,
    `ddd2` varchar(2) DEFAULT NULL,
    `telefone2` varchar(15) DEFAULT NULL,
    `tipo_telefone2` varchar(45) DEFAULT NULL,
    `rg` varchar(15) DEFAULT NULL,
    `cpf` varchar(15) DEFAULT NULL,
    `ddd3` varchar(2) DEFAULT NULL,
    `telefone3` varchar(9) DEFAULT NULL,
    `tipo_telefone3` varchar(45) DEFAULT NULL,
    `nascimento` date DEFAULT NULL,
    `logradouro` varchar(45) DEFAULT NULL,
    `endereco` varchar(45) DEFAULT NULL,
    `numero` varchar(20) DEFAULT NULL,
    `cep` varchar(10) DEFAULT NULL,
    `cidade` varchar(45) DEFAULT NULL,
    `bairro` varchar(45) DEFAULT NULL,
    `complemento` varchar(100) DEFAULT NULL,
    `uf` varchar(2) DEFAULT NULL,
    `conjuge_nome` varchar(45) DEFAULT NULL,
    `conjuge_ddd` varchar(2) DEFAULT NULL,
    `conjuge_telefone` varchar(9) DEFAULT NULL,
    `conjuge_nascimento` date DEFAULT NULL,
    `corretor_id` int NOT NULL,
    `gerente_id` int DEFAULT NULL,
    `tipo_de_midia_id` int DEFAULT NULL,
    `categoria` varchar(20) DEFAULT NULL,
    `status` varchar(5) DEFAULT NULL,
    `texto` text,
    `alteracao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `inclusao` datetime DEFAULT CURRENT_TIMESTAMP,
    `renda_pessoal` double DEFAULT NULL,
    `renda_familia` double DEFAULT NULL,
    `fgts` double DEFAULT NULL,
    `sinal` double DEFAULT NULL,
    `procurando_desde` date DEFAULT NULL,
    `procurar_ate` date DEFAULT NULL,
    `desconsiderar` tinyint(1) DEFAULT '0',
    `valor_de` float DEFAULT NULL,
    `valor_ate` float DEFAULT NULL,
    `area_de` float DEFAULT NULL,
    `area_ate` float DEFAULT NULL,
    `dormitorios_de` int DEFAULT NULL,
    `dormitorios_ate` int DEFAULT NULL,
    `suite_de` int DEFAULT NULL,
    `suite_ate` int DEFAULT NULL,
    `garagem_de` int DEFAULT NULL,
    `garagem_ate` int DEFAULT NULL,
    `cidade_preferencial_id` int DEFAULT NULL,
    `cidade_preferencia_id` int DEFAULT NULL,
    `oferta_ativa` tinyint(1) DEFAULT NULL,
    `conjuge_email` varchar(100) DEFAULT NULL,
    `codigo` varchar(45) DEFAULT NULL,
    `lista_oferta_ativa` int DEFAULT NULL,
    `estado_preferencial` varchar(2) DEFAULT NULL,
    `id_sistema_antigo` int DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `origem` varchar(45) DEFAULT NULL,
    `senha` varchar(155) DEFAULT NULL,
    `imovel_origem_id` varchar(50) DEFAULT NULL,
    `imovel_atual_id` varchar(50) DEFAULT NULL,
    `bairros_preferenciais_ids` varchar(200) DEFAULT NULL,
    `urgencia_compra` varchar(30) DEFAULT NULL,
    `o_que_deseja` text,
    `notificar_whatsapp` tinyint(1) DEFAULT NULL,
    `estagio_id` int DEFAULT NULL,
    `ordem` int DEFAULT '999999',
    `proprietario_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `clientes_gerente` (`gerente_id`),
    KEY `clientes_tipo_midia` (`tipo_de_midia_id`),
    KEY `clientes_usuario` (`corretor_id`),
    KEY `clientes_imobiliaria` (`imobiliaria_id`) USING BTREE,
    KEY `idx_nome` (`nome`),
    KEY `idx_email` (`email`),
    KEY `idx_telefone1` (`telefone1`),
    KEY `idx_telefone2` (`telefone2`),
    KEY `idx_telefone3` (`telefone3`),
    KEY `idx_alteracao` (`alteracao`),
    KEY `idx_inclusao` (`inclusao`),
    KEY `idx_desconsiderar` (`desconsiderar`),
    KEY `idx_categoria` (`categoria`),
    KEY `idx_oferta_ativa` (`oferta_ativa`),
    KEY `idx_cidade_preferencial_id` (`cidade_preferencial_id`),
    KEY `idx_codigo` (`codigo`),
    KEY `idx_corretor_desconsiderar` (
        `corretor_id`,
        `desconsiderar`
    ),
    KEY `idx_corretor_alteracao` (`corretor_id`, `alteracao`),
    CONSTRAINT `clientes_gerente` FOREIGN KEY (`gerente_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `clientes_tipo_midia` FOREIGN KEY (`tipo_de_midia_id`) REFERENCES `tiposdemidia` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `clientes_usuario` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1112728 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.clientes_funil_ordenar definition

CREATE TABLE `clientes_funil_ordenar` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `cliente_id` int NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `ordem` int NOT NULL DEFAULT '9999999',
    PRIMARY KEY (`id`),
    KEY `cfo_cliente` (`cliente_id`),
    KEY `cfo_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `cfo_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `cfo_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.comodos definition

CREATE TABLE `comodos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `comodo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `comodos_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `comodos_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 49616 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.composicoes definition

CREATE TABLE `composicoes` (
    `id` int NOT NULL AUTO_INCREMENT,
    `composicao` varchar(60) NOT NULL,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `id_importacao` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `composicoes_composicao` (`composicao`),
    KEY `composicoes_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `composicoes_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 69860 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.configuracoes_importacao definition

CREATE TABLE `configuracoes_importacao` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL,
    `site` varchar(100) NOT NULL,
    `key` varchar(255) DEFAULT NULL,
    `client_id` varchar(100) DEFAULT NULL,
    `client_secret` varchar(100) DEFAULT NULL,
    `enviar_resultado` tinyint(1) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `configuracoes_importacao_imoveis_FK` (`imobiliaria_id`),
    CONSTRAINT `configuracoes_importacao_imoveis_FK` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 57 DEFAULT CHARSET = latin1;

-- infocenterhost1.corretores definition

CREATE TABLE `corretores` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `nome` varchar(60) NOT NULL,
    `telefone` varchar(60) DEFAULT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `usuario_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `corretores_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `corretores_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1790 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.destaques definition

CREATE TABLE `destaques` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `foto` varchar(100) NOT NULL,
    `link` varchar(255) DEFAULT NULL,
    `descricao` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
    `titulo` varchar(255) DEFAULT NULL,
    `ordem` tinyint DEFAULT NULL,
    `ativo` tinyint(1) DEFAULT '1',
    `tourvirtual` varchar(255) DEFAULT NULL,
    `mobile` tinyint(1) NOT NULL DEFAULT '0',
    `secao` varchar(45) DEFAULT 'inicial',
    `formato` varchar(20) NOT NULL DEFAULT 'banner',
    PRIMARY KEY (`id`),
    KEY `destaques_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `destaques_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 17668 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.edificios definition

CREATE TABLE `edificios` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `edificio` varchar(60) NOT NULL,
    `id_sistema_antigo` int DEFAULT NULL,
    `descricao` text,
    `cep` varchar(15) DEFAULT NULL,
    `cidade_id` int DEFAULT NULL,
    `bairro_id` int DEFAULT NULL,
    `endereco` varchar(100) DEFAULT NULL,
    `latitude` varchar(45) DEFAULT NULL,
    `longitude` varchar(45) DEFAULT NULL,
    `construtora` varchar(100) DEFAULT NULL,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `tipo` varchar(50) DEFAULT NULL,
    `titulo` varchar(255) DEFAULT NULL,
    `numero` varchar(100) DEFAULT NULL,
    `tipo_de_portaria` varchar(100) DEFAULT NULL,
    `plantao` varchar(100) DEFAULT NULL,
    `entrega_em` varchar(100) DEFAULT NULL,
    `ano_de_construcao` int DEFAULT NULL,
    `pavimentos` tinyint DEFAULT NULL,
    `elevador` tinyint DEFAULT NULL,
    `andares` int DEFAULT NULL,
    `apartamentos_por_andar` tinyint DEFAULT NULL,
    `numero_apartamentos` tinyint DEFAULT NULL,
    `numero_torres` tinyint DEFAULT NULL,
    `seo_url` varchar(150) DEFAULT NULL,
    `seo_titulo` varchar(150) DEFAULT NULL,
    `seo_descricao` varchar(150) DEFAULT NULL,
    `tipo_condominio` varchar(50) DEFAULT NULL,
    `trabalhar_como_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `edificios_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `edificios_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 285195 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.emkts_enviados definition

CREATE TABLE `emkts_enviados` (
    `id` int NOT NULL AUTO_INCREMENT,
    `usuario_id` int NOT NULL DEFAULT '0',
    `cliente_id` int DEFAULT NULL,
    `assunto` varchar(255) DEFAULT NULL,
    `email` varchar(255) DEFAULT NULL,
    `mensagem` text,
    `imoveis` varchar(255) DEFAULT NULL,
    `data_envio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `transacao` varchar(3) DEFAULT NULL,
    `enviado` tinyint DEFAULT '1',
    `hash` varchar(25) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `emkts_enviados_usuario` (`usuario_id`),
    KEY `emkts_enviados_hash` (`hash`) USING BTREE,
    KEY `emkts_enviados_cliente_id_IDX` (`cliente_id`) USING BTREE,
    CONSTRAINT `emkts_enviados_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 227758 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.estagios_cliente definition

CREATE TABLE `estagios_cliente` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `nome` varchar(50) DEFAULT NULL,
    `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `ordem` int DEFAULT '999',
    PRIMARY KEY (`id`),
    KEY `estagios_cliente_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `estagios_cliente_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.etiquetas definition

CREATE TABLE `etiquetas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `etiqueta` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
    `imobiliaria_id` int NOT NULL,
    PRIMARY KEY (`id`),
    KEY `etiquetas_imobiliarias_FK` (`imobiliaria_id`),
    CONSTRAINT `etiquetas_imobiliarias_FK` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.fotosedificio definition

CREATE TABLE `fotosedificio` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `foto` varchar(255) NOT NULL DEFAULT '',
    `ordem` int unsigned DEFAULT NULL,
    `edificio_id` int NOT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `atualizado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `fotosedificio_edificio` (`edificio_id`),
    KEY `fotosedificio_imobiliarias_FK` (`imobiliaria_id`),
    CONSTRAINT `fotosedificio_edificios_FK` FOREIGN KEY (`edificio_id`) REFERENCES `edificios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fotosedificio_imobiliarias_FK` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13071 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.funil_etapas definition

CREATE TABLE `funil_etapas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `etapa` varchar(100) NOT NULL,
    `descricao` text,
    `imobiliaria_id` int NOT NULL,
    `ordem` int NOT NULL DEFAULT '99',
    `funil_tipo_id` int NOT NULL,
    PRIMARY KEY (`id`),
    KEY `funil_etapas_FK_1` (`imobiliaria_id`),
    CONSTRAINT `funil_etapas_FK_1` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2807 DEFAULT CHARSET = latin1;

-- infocenterhost1.funil_tipos definition

CREATE TABLE `funil_tipos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `tipo` varchar(100) NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `principal` tinyint DEFAULT NULL,
    `objetivos_leads` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `funil_tipos_FK_1` (`imobiliaria_id`),
    CONSTRAINT `funil_tipos_FK_1` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 492 DEFAULT CHARSET = latin1;

-- infocenterhost1.galerias definition

CREATE TABLE `galerias` (
    `id` int NOT NULL AUTO_INCREMENT,
    `galeria` varchar(60) NOT NULL,
    `imobiliaria_id` int NOT NULL DEFAULT '0',
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `galerias_imobiliaria` (`imobiliaria_id`),
    CONSTRAINT `galerias_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1614 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.imoveis definition

CREATE TABLE `imoveis` (
    `id` int NOT NULL AUTO_INCREMENT,
    `acabamentos` varchar(45) DEFAULT NULL,
    `aluguel` float DEFAULT NULL,
    `aluguel_bruto` float DEFAULT NULL,
    `andar` int unsigned DEFAULT NULL,
    `ano_de_construcao` int unsigned DEFAULT NULL,
    `apartamentos_por_andar` int unsigned DEFAULT NULL,
    `area_averbada` float DEFAULT NULL,
    `area_coberta` float DEFAULT NULL,
    `area_comum` float DEFAULT NULL,
    `area_laje` float DEFAULT NULL,
    `area_privativa` float DEFAULT NULL,
    `area_terreno` float DEFAULT NULL,
    `area_total` float DEFAULT NULL,
    `area_total_inicial` float DEFAULT NULL,
    `area_total_final` float DEFAULT NULL,
    `area_util_inicial` float DEFAULT NULL,
    `area_util_final` float DEFAULT NULL,
    `bairro_id` int DEFAULT NULL,
    `balneario_id` int DEFAULT NULL,
    `banheiros` int DEFAULT NULL,
    `banheiro_de_empregada` tinyint(1) DEFAULT NULL,
    `bonificacao` float DEFAULT NULL,
    `categoria_id` int DEFAULT NULL,
    `cep` varchar(10) DEFAULT NULL,
    `chaves` tinyint(1) DEFAULT NULL,
    `chaves_em` varchar(20) DEFAULT NULL,
    `cidade_id` int NOT NULL,
    `circunscricao` varchar(45) DEFAULT NULL,
    `cliques` bigint DEFAULT '0',
    `cobertura` tinyint(1) DEFAULT '0',
    `codigo_da_chave` varchar(20) DEFAULT NULL,
    `comissao` varchar(45) DEFAULT NULL,
    `como_chegar` text,
    `complemento` varchar(45) DEFAULT NULL,
    `condicoes_para_negociacao` text,
    `condominio` float DEFAULT NULL,
    `condominio_fechado` tinyint(1) DEFAULT '0',
    `construtora` varchar(60) DEFAULT NULL,
    `contato_no_local` varchar(45) DEFAULT NULL,
    `contato_nome` varchar(60) DEFAULT NULL,
    `contato_email` varchar(150) DEFAULT NULL,
    `contato_telefone` varchar(60) DEFAULT NULL,
    `corretor_angariador_id` int DEFAULT NULL,
    `data_da_baixa` date DEFAULT NULL,
    `data_do_cadastro` date DEFAULT NULL,
    `dependencia_de_empregada` tinyint(1) DEFAULT '0',
    `descricao` text,
    `descricao_do_empreendimento` text,
    `destacar` tinyint(1) DEFAULT '0',
    `distancia_do_mar` varchar(20) DEFAULT NULL,
    `dormitorios` tinyint unsigned DEFAULT NULL,
    `dormitorios_final` int unsigned DEFAULT NULL,
    `dormitorios_inicial` int unsigned DEFAULT NULL,
    `edificio_id` int DEFAULT NULL,
    `edicula` varchar(45) DEFAULT NULL,
    `elevador` tinyint DEFAULT NULL,
    `empreendimento_realizado` tinyint(1) DEFAULT '0',
    `endereco` varchar(60) DEFAULT NULL,
    `entrada` float DEFAULT NULL,
    `entrega_em` varchar(20) DEFAULT NULL,
    `entre_ruas` varchar(60) DEFAULT NULL,
    `escritura` varchar(45) DEFAULT NULL,
    `esquadrias` varchar(45) DEFAULT NULL,
    `estacionamento` tinyint(1) DEFAULT '0',
    `estado` varchar(2) NOT NULL,
    `estado_de_conservacao` varchar(20) DEFAULT NULL,
    `estagio_da_obra` varchar(50) DEFAULT NULL,
    `exclusivo` tinyint(1) DEFAULT NULL,
    `face_do_apartamento` varchar(20) DEFAULT NULL,
    `face_do_imovel` varchar(20) DEFAULT NULL,
    `forma_de_permuta` text,
    `formato_do_terreno` varchar(45) DEFAULT NULL,
    `garagens` tinyint unsigned DEFAULT NULL,
    `garagem_tipo` varchar(100) DEFAULT NULL,
    `garagem_localizacao` varchar(50) DEFAULT NULL,
    `garagem_numero` varchar(50) DEFAULT NULL,
    `garagem_inicial` tinyint DEFAULT NULL,
    `garagem_final` tinyint DEFAULT NULL,
    `hora_de_visita` varchar(45) DEFAULT NULL,
    `imediacoes` varchar(60) DEFAULT NULL,
    `imob_codigo_imoview` varchar(14) DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `indicacao_fiscal` varchar(45) DEFAULT NULL,
    `inicio_da_opcao` date DEFAULT NULL,
    `iptu` float DEFAULT NULL,
    `lancamento` tinyint(1) DEFAULT NULL,
    `latitude` varchar(45) DEFAULT NULL,
    `litoral` tinyint(1) DEFAULT NULL,
    `logradouro` varchar(20) DEFAULT NULL,
    `longitude` varchar(45) DEFAULT NULL,
    `lote` varchar(45) DEFAULT NULL,
    `matricula` varchar(45) DEFAULT NULL,
    `medidas` varchar(45) DEFAULT NULL,
    `minha_casa_minha_vida` tinyint(1) DEFAULT NULL,
    `mobiliado` tinyint(1) DEFAULT NULL,
    `mostrar_endereco` tinyint(1) DEFAULT NULL,
    `mostrar_numero` tinyint(1) DEFAULT NULL,
    `mostrar_complemento` tinyint(1) DEFAULT NULL,
    `nome_do_empreendimento` varchar(45) DEFAULT NULL,
    `novo` tinyint(1) DEFAULT NULL,
    `numero` varchar(20) DEFAULT NULL,
    `numero_andares` int DEFAULT NULL,
    `numero_de_pessoas` int unsigned DEFAULT NULL,
    `numero_do_apartamento` varchar(20) DEFAULT NULL,
    `observacoes` text,
    `observacoes_de_temporada` text,
    `ocupacao` varchar(20) DEFAULT NULL,
    `oferta` tinyint(1) DEFAULT NULL,
    `oferta_locacao` tinyint DEFAULT NULL,
    `oferta_venda` tinyint DEFAULT NULL,
    `pasta` varchar(45) DEFAULT NULL,
    `pavimentos` int unsigned DEFAULT NULL,
    `pe_direito` varchar(45) DEFAULT NULL,
    `periodo_minimo_no_ano_novo` varchar(45) DEFAULT NULL,
    `periodo_minimo_no_carnaval` varchar(45) DEFAULT NULL,
    `permite_permuta` tinyint(1) DEFAULT NULL,
    `piso` varchar(45) DEFAULT NULL,
    `planta` varchar(45) DEFAULT NULL,
    `plantao` varchar(20) DEFAULT NULL,
    `pode_por_placa` tinyint(1) DEFAULT NULL,
    `posicao_na_quadra` varchar(45) DEFAULT NULL,
    `possui_placa` tinyint(1) DEFAULT NULL,
    `prestacao` float DEFAULT NULL,
    `prestacoes_a_pagar` int unsigned DEFAULT NULL,
    `prestacoes_pagas` int unsigned DEFAULT NULL,
    `proprietario_id` int DEFAULT NULL,
    `quadra` varchar(45) DEFAULT NULL,
    `quadras_da_avenida` int unsigned DEFAULT NULL,
    `quadras_da_praia` int unsigned DEFAULT NULL,
    `quantidade_de_chaves` int unsigned DEFAULT NULL,
    `referencia` varchar(100) DEFAULT NULL,
    `referencia2` varchar(100) DEFAULT NULL,
    `referencia_imoview` varchar(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `reservado` tinyint(1) DEFAULT NULL,
    `reservado1` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `reservado2` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `reservado_para` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `restricoes_do_proprietario` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `revestimento_externo` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `revestimento_interno` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `sacada` tinyint(1) DEFAULT NULL,
    `saldo_devedor` float DEFAULT NULL,
    `seguro` float DEFAULT NULL,
    `status_de_venda` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `suite` tinyint unsigned DEFAULT NULL,
    `demisuite` tinyint unsigned DEFAULT NULL,
    `taxa_de_limpeza_urbana` float DEFAULT NULL,
    `tempo_de_contrato` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `testada` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `teto` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `tipo_de_apartamento` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `tipo_de_lancamento` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `tipo_de_portaria` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `tipo_de_uso` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `tipo_id` int DEFAULT NULL,
    `tipo_lancamento` tinyint(1) DEFAULT NULL,
    `tipo_locacao` tinyint(1) DEFAULT NULL,
    `tipo_temporada` tinyint(1) DEFAULT NULL,
    `tipo_venda` tinyint(1) DEFAULT NULL,
    `tipo_construcao` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `topografia` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `trabalhar_como_id` int DEFAULT NULL,
    `valor_alta_temporada` float DEFAULT NULL,
    `valor_ano_novo` float DEFAULT NULL,
    `valor_baixa_temporada` float DEFAULT NULL,
    `valor_carnaval` float DEFAULT NULL,
    `valor_de_angariacao_inicial` float DEFAULT NULL,
    `valor_de_avaliacao` double DEFAULT NULL,
    `valor_inicial` double DEFAULT NULL,
    `valor_final` double DEFAULT NULL,
    `valor_por_m2` float DEFAULT NULL,
    `valor_total` double DEFAULT NULL,
    `valor_oferta_venda` double DEFAULT NULL,
    `valor_oferta_locacao` double DEFAULT NULL,
    `vencimento_da_opcao` date DEFAULT NULL,
    `video` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `vista_para_o_mar` tinyint(1) DEFAULT NULL,
    `zoneamento` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `360` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `tipo_iptu` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `tipo_seguro` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `total_unidades` int DEFAULT NULL,
    `pontos_fortes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `alteracao` timestamp NULL DEFAULT NULL,
    `empresa` tinyint(1) DEFAULT NULL,
    `seo_slug` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `seo_titulo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `seo_descricao` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `seo_slug_alterar` tinyint(1) DEFAULT NULL,
    `seo_descricao_alterar` tinyint(1) DEFAULT NULL,
    `seo_titulo_alterar` tinyint(1) DEFAULT NULL,
    `orulo_id` int DEFAULT NULL,
    `score_valor` int DEFAULT NULL,
    `score_localizacao` int DEFAULT NULL,
    `score_documentacao` int DEFAULT NULL,
    `score_infraestrutura` int DEFAULT NULL,
    `score_acabamento` int DEFAULT NULL,
    `score_investimento` int DEFAULT NULL,
    `score_consideracoes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `score_urgencia` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `score_datalimite` date DEFAULT NULL,
    `score_conservacao` int DEFAULT NULL,
    `score_condominio` int DEFAULT NULL,
    `desconto_calculado` float DEFAULT NULL,
    `indicador_id` int DEFAULT NULL,
    `area_construida` float DEFAULT NULL,
    `internacional` tinyint(1) DEFAULT NULL,
    `score_flexibilidade` int DEFAULT NULL,
    `score_urgencia2` int DEFAULT NULL,
    `condominio_mes_base` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `imovel_de_rua` tinyint(1) DEFAULT NULL,
    `outros` json DEFAULT NULL,
    `agencia` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `corretor_galvao` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `semimobiliado` tinyint(1) DEFAULT NULL,
    `parte_cadastro` tinyint DEFAULT NULL,
    `validacoes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
    `referencia_interna` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `frente_mar` tinyint(1) DEFAULT NULL,
    `quadra_mar` tinyint(1) DEFAULT NULL,
    `numero_torres` int DEFAULT NULL,
    `origem` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
    `demisuites` int DEFAULT NULL,
    `corretor2` int DEFAULT NULL,
    `data_publicacao` date DEFAULT NULL,
    `ano_reforma` int DEFAULT NULL,
    `numero_das_vagas` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `imoveis_bairro` (`bairro_id`),
    KEY `imoveis_balneario` (`balneario_id`),
    KEY `imoveis_categoria` (`categoria_id`),
    KEY `imoveis_cidade` (`cidade_id`),
    KEY `imoveis_edificio` (`edificio_id`),
    KEY `imoveis_imobiliaria` (`imobiliaria_id`),
    KEY `imoveis_proprietario` (`proprietario_id`),
    KEY `imoveis_tipo` (`tipo_id`),
    KEY `imoveis_trabalharcomo` (`trabalhar_como_id`),
    KEY `imoveis_venda_destacados` (
        `destacar`,
        `imobiliaria_id`,
        `tipo_venda`
    ),
    KEY `imoveis_venda_imobiliaria` (
        `imobiliaria_id`,
        `tipo_venda`
    ),
    KEY `imoveis_oruloid` (`orulo_id`),
    KEY `imoveis_slug` (`seo_slug`),
    KEY `imoveis_angariador` (`corretor_angariador_id`),
    KEY `imoveis_imob_codigo_imoview` (`imob_codigo_imoview`) USING BTREE,
    CONSTRAINT `imoveis_angariador` FOREIGN KEY (`corretor_angariador_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL,
    CONSTRAINT `imoveis_bairro` FOREIGN KEY (`bairro_id`) REFERENCES `bairros` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `imoveis_balneario` FOREIGN KEY (`balneario_id`) REFERENCES `balnearios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `imoveis_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `imoveis_cidade` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`) ON UPDATE CASCADE,
    CONSTRAINT `imoveis_edificio` FOREIGN KEY (`edificio_id`) REFERENCES `edificios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `imoveis_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `imoveis_proprietario` FOREIGN KEY (`proprietario_id`) REFERENCES `proprietarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `imoveis_tipo` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`) ON UPDATE CASCADE,
    CONSTRAINT `imoveis_trabalharcomo` FOREIGN KEY (`trabalhar_como_id`) REFERENCES `modosdetrabalhar` (`id`) ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11704537 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.imoveis_oferecidos definition

CREATE TABLE `imoveis_oferecidos` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `cliente_id` int DEFAULT NULL,
    `usuario_id` int DEFAULT NULL,
    `imovel_id` int NOT NULL DEFAULT '0',
    `criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `transacao` varchar(2) NOT NULL,
    `formato` varchar(50) DEFAULT NULL,
    `pedido_id` int DEFAULT NULL,
    `descartado` tinyint(1) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `imoveis_oferecidos_imovel` (`imovel_id`),
    KEY `imoveis_oferecidos_usuario` (`usuario_id`),
    KEY `imoveis_oferecidos_cliente` (`cliente_id`) USING BTREE,
    KEY `imoveis_oferecidos_pedido` (`pedido_id`) USING BTREE,
    KEY `idx_descartado` (`descartado`),
    CONSTRAINT `imoveis_oferecidos_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `imoveis_oferecidos_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 312784 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.imoveis_selecionados definition

CREATE TABLE `imoveis_selecionados` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `usuario_id` int NOT NULL,
    `imovel_id` int NOT NULL,
    `transacao` varchar(2) NOT NULL,
    `criacao` datetime NOT NULL,
    PRIMARY KEY (`id`),
    KEY `imoveis_selecionados_imovel` (`imovel_id`),
    KEY `imoveis_selecionados_usuario` (`usuario_id`),
    CONSTRAINT `imoveis_selecionados_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `imoveis_selecionados_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 195295 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.imoveis_sites_parceiros definition

CREATE TABLE `imoveis_sites_parceiros` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL DEFAULT '0',
    `tipo_venda` tinyint DEFAULT NULL,
    `tipo_locacao` tinyint DEFAULT NULL,
    `tipo_lancamento` tinyint DEFAULT NULL,
    `tipo_temporada` tinyint DEFAULT NULL,
    `site` varchar(50) DEFAULT NULL,
    `destacar` tinyint DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `imoveis_sites_parceiros_imobiliaria` (`imobiliaria_id`),
    KEY `imoveis_sites_parceiros_imovel` (`imovel_id`),
    CONSTRAINT `imoveis_sites_parceiros_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `imoveis_sites_parceiros_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5344454 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.infraestruturasimovel definition

CREATE TABLE `infraestruturasimovel` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL,
    `infraestrutura_id` int NOT NULL,
    `ordem` int unsigned DEFAULT NULL,
    `edificio_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `infraestruturasimovel_imovel` (`imovel_id`),
    KEY `infraestruturasimovel_infra` (`infraestrutura_id`),
    CONSTRAINT `infraestruturasimovel_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `infraestruturasimovel_infra` FOREIGN KEY (`infraestrutura_id`) REFERENCES `infraestruturas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 486364576 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.ligacoes definition

CREATE TABLE `ligacoes` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `cliente_id` int DEFAULT NULL,
    `assunto` varchar(45) DEFAULT NULL,
    `tipodemidia_id` int DEFAULT NULL,
    `para_quem` int NOT NULL,
    `mensagem` text NOT NULL,
    `referencias` varchar(255) DEFAULT NULL,
    `data` date DEFAULT NULL,
    `hora` time DEFAULT NULL,
    `status` varchar(45) DEFAULT NULL,
    `corretor_id` int NOT NULL,
    `forma_id` int DEFAULT NULL,
    `inclusao` datetime DEFAULT CURRENT_TIMESTAMP,
    `origem` varchar(40) DEFAULT NULL,
    `proprietario_id` int DEFAULT NULL,
    `dados_lead` text,
    `id_externo` varchar(100) DEFAULT NULL,
    `campanha` varchar(100) DEFAULT NULL,
    `utm` text,
    PRIMARY KEY (`id`),
    KEY `ligacoes_cliente` (`cliente_id`),
    KEY `ligacoes_corretor` (`corretor_id`),
    KEY `ligacoes_paraquem` (`para_quem`),
    KEY `ligacoes_tipodemidia` (`tipodemidia_id`),
    CONSTRAINT `ligacoes_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `ligacoes_corretor` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `ligacoes_paraquem` FOREIGN KEY (`para_quem`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `ligacoes_tipodemidia` FOREIGN KEY (`tipodemidia_id`) REFERENCES `tiposdemidia` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 413257 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.pacotesimovel definition

CREATE TABLE `pacotesimovel` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL,
    `pacote_id` int NOT NULL,
    `valor` float DEFAULT NULL,
    `ordem` int unsigned DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `pacotesimovel_pacote` (`pacote_id`),
    KEY `pacotesimovel_imovel` (`imovel_id`),
    CONSTRAINT `pacotesimovel_composicao` FOREIGN KEY (`pacote_id`) REFERENCES `pacotes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `pacotesimovel_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5412 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.parcerias_historicos definition

CREATE TABLE `parcerias_historicos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `parceria_id` int NOT NULL,
    `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `contato` varchar(50) DEFAULT NULL,
    `historico` text,
    `usuario_id` int NOT NULL,
    PRIMARY KEY (`id`),
    KEY `parcerias_historicos_parceria` (`parceria_id`),
    KEY `parcerias_historicos_usuario` (`usuario_id`),
    CONSTRAINT `parcerias_historicos_parceria` FOREIGN KEY (`parceria_id`) REFERENCES `parcerias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `parcerias_historicos_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.parcerias_log_alteracao definition

CREATE TABLE `parcerias_log_alteracao` (
    `id` int unsigned NOT NULL AUTO_INCREMENT,
    `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `valores_antigos` text NOT NULL,
    `valores_novos` text NOT NULL,
    `usuario_id` int NOT NULL DEFAULT '0',
    `alteracao` text,
    `parceria_id` int NOT NULL,
    PRIMARY KEY (`id`),
    KEY `parcerias_log_alteracao_parceria` (`parceria_id`),
    KEY `parcerias_log_alteracao_usuario` (`usuario_id`),
    CONSTRAINT `parcerias_log_alteracao_parceria` FOREIGN KEY (`parceria_id`) REFERENCES `parcerias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `parcerias_log_alteracao_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 125 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.parcerias_tipos definition

CREATE TABLE `parcerias_tipos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imobiliaria_id` int DEFAULT NULL,
    `tipo_parceira` int DEFAULT NULL,
    `tipo_ligacao` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `parcerias_tipos_unica` (
        `imobiliaria_id`,
        `tipo_parceira`
    ),
    KEY `parcerias_tipos_imobiliaria` (`imobiliaria_id`),
    KEY `parcerias_tipos_tipo_ligacao` (`tipo_ligacao`),
    KEY `parcerias_tipos_tipo_parceira` (`tipo_parceira`),
    CONSTRAINT `parcerias_tipos_imobiliaria` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `parcerias_tipos_tipo_ligacao` FOREIGN KEY (`tipo_ligacao`) REFERENCES `tipos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `parcerias_tipos_tipo_parceira` FOREIGN KEY (`tipo_parceira`) REFERENCES `tipos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 100087 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.perfil_cliente_bairro definition

CREATE TABLE `perfil_cliente_bairro` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cliente_id` int NOT NULL DEFAULT '0',
    `bairro_id` int NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `perfil_cliente_bairro_bairro` (`bairro_id`),
    KEY `perfil_cliente_bairro_cliente` (`cliente_id`),
    CONSTRAINT `perfil_cliente_bairro_bairro` FOREIGN KEY (`bairro_id`) REFERENCES `bairros` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `perfil_cliente_bairro_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16723 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.perfil_cliente_pagamento definition

CREATE TABLE `perfil_cliente_pagamento` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cliente_id` int NOT NULL DEFAULT '0',
    `pagamento` varchar(40) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`),
    KEY `perfil_cliente_pagamento_cliente` (`cliente_id`),
    CONSTRAINT `perfil_cliente_pagamento_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13865 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.perfil_cliente_tipo definition

CREATE TABLE `perfil_cliente_tipo` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cliente_id` int NOT NULL DEFAULT '0',
    `tipo_id` int NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `perfil_cliente_tipo_cliente` (`cliente_id`),
    KEY `perfil_cliente_tipo_tipo` (`tipo_id`),
    CONSTRAINT `perfil_cliente_tipo_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `perfil_cliente_tipo_tipo` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 22907 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.perfil_cliente_uso definition

CREATE TABLE `perfil_cliente_uso` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cliente_id` int NOT NULL DEFAULT '0',
    `uso` varchar(40) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`),
    KEY `perfil_cliente_uso_cliente` (`cliente_id`),
    CONSTRAINT `perfil_cliente_uso_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13668 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.perfil_cliente_vocacao definition

CREATE TABLE `perfil_cliente_vocacao` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cliente_id` int NOT NULL DEFAULT '0',
    `vocacao` varchar(40) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`),
    KEY `perfil_cliente_vocacao_cliente` (`cliente_id`),
    CONSTRAINT `perfil_cliente_vocacao_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 113164 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.portaisimovel definition

CREATE TABLE `portaisimovel` (
    `id` int NOT NULL AUTO_INCREMENT,
    `portal_id` int DEFAULT NULL,
    `link` varchar(255) DEFAULT NULL,
    `ordem` tinyint DEFAULT NULL,
    `imovel_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `portaisimovel_ibfk_1` (`portal_id`),
    KEY `portaisimovel_ibfk_2` (`imovel_id`),
    CONSTRAINT `portaisimovel_ibfk_1` FOREIGN KEY (`portal_id`) REFERENCES `portais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `portaisimovel_ibfk_2` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 29258 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.processo_de_venda_arquivos definition

CREATE TABLE `processo_de_venda_arquivos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `pv_id` int NOT NULL DEFAULT '0',
    `corretor_id` int NOT NULL DEFAULT '0',
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `arquivo` varchar(100) NOT NULL DEFAULT '',
    `descricao` text,
    PRIMARY KEY (`id`),
    KEY `processo_de_venda_arquivos_pv` (`pv_id`),
    KEY `processo_de_venda_arquivos_usuario` (`corretor_id`),
    CONSTRAINT `processo_de_venda_arquivos_pv` FOREIGN KEY (`pv_id`) REFERENCES `processo_de_venda` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `processo_de_venda_arquivos_usuario` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 17 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.profissoes_proprietario definition

CREATE TABLE `profissoes_proprietario` (
    `id` int NOT NULL AUTO_INCREMENT,
    `proprietario_id` int NOT NULL,
    `profissao_id` int NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_profissoes_proprietario_1_idx` (`proprietario_id`),
    KEY `fk_profissoes_proprietario_2_idx` (`profissao_id`),
    CONSTRAINT `fk_profissoes_proprietario_1` FOREIGN KEY (`proprietario_id`) REFERENCES `proprietarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fk_profissoes_proprietario_2` FOREIGN KEY (`profissao_id`) REFERENCES `profissoes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2681 DEFAULT CHARSET = latin1;

-- infocenterhost1.recontato definition

CREATE TABLE `recontato` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cliente_id` int NOT NULL DEFAULT '0',
    `texto` text,
    `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `corretor_id` int NOT NULL DEFAULT '0',
    `origem` varchar(45) DEFAULT NULL,
    `funil_id` int DEFAULT NULL,
    `tipo_cliente` varchar(20) NOT NULL DEFAULT 'cliente',
    PRIMARY KEY (`id`),
    KEY `recontato_usuario` (`corretor_id`),
    KEY `idx_cliente_id` (`cliente_id`),
    KEY `idx_data` (`data`),
    CONSTRAINT `recontato_usuario` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1009117 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.reserva_temporada definition

CREATE TABLE `reserva_temporada` (
    `id` int NOT NULL AUTO_INCREMENT,
    `data` date DEFAULT NULL,
    `periodo` varchar(10) DEFAULT NULL,
    `imovel_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `reserva_temporada_imovel_idx` (`imovel_id`),
    CONSTRAINT `reserva_temporada_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 135606 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.tokens definition

CREATE TABLE `tokens` (
    `id` int NOT NULL AUTO_INCREMENT,
    `token` varchar(300) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
    `active` tinyint(1) DEFAULT '1',
    `trabalhar_como_id` int DEFAULT NULL,
    `imovel_id` int DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `corretor_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `tokens_imobiliarias_FK` (`imobiliaria_id`),
    KEY `tokens_usuarios_FK` (`corretor_id`),
    CONSTRAINT `tokens_imobiliarias_FK` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`),
    CONSTRAINT `tokens_usuarios_FK` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2634 DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- infocenterhost1.acessos_internos definition

CREATE TABLE `acessos_internos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL DEFAULT '0',
    `operacao` varchar(15) DEFAULT NULL,
    `corretor_id` int DEFAULT NULL,
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `acessos_internos_imovel` (`imovel_id`),
    KEY `acessos_internos_usuario` (`corretor_id`),
    CONSTRAINT `acessos_internos_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `acessos_internos_usuario` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1118838 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.agendamento definition

CREATE TABLE `agendamento` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cliente_id` int DEFAULT NULL,
    `corretor_id` int DEFAULT NULL,
    `data` date DEFAULT NULL,
    `texto` text,
    `imovel_id` int DEFAULT NULL,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `hora` time DEFAULT NULL,
    `status` varchar(45) DEFAULT 'pendente',
    `origem` varchar(45) DEFAULT NULL,
    `observacao` text,
    `funil_id` int DEFAULT NULL,
    `responsavel_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `agendamento_cliente` (`cliente_id`),
    KEY `agendamento_imovel` (`imovel_id`),
    KEY `agendamento_usuario` (`corretor_id`),
    KEY `idx_data` (`data`),
    KEY `idx_cliente_data` (`cliente_id`, `data`),
    CONSTRAINT `agendamento_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `agendamento_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `agendamento_usuario` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 32263 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.arquivosimovel definition

CREATE TABLE `arquivosimovel` (
    `id` int NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL DEFAULT '0',
    `corretor_id` int NOT NULL DEFAULT '0',
    `categoria_id` int DEFAULT NULL,
    `inclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `arquivo` varchar(255) NOT NULL DEFAULT '',
    `descricao` text,
    `permitir` tinyint(1) DEFAULT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `arquivosimovel_imovel` (`imovel_id`),
    KEY `arquivosimovel_usuario` (`corretor_id`),
    CONSTRAINT `arquivosimovel_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `arquivosimovel_usuario` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18430228 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.atendimentos definition

CREATE TABLE `atendimentos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `corretor_id` int NOT NULL DEFAULT '0',
    `cliente_id` int NOT NULL,
    `inclusao` datetime DEFAULT CURRENT_TIMESTAMP,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `valor_inicial` float DEFAULT NULL,
    `valor_final` float DEFAULT NULL,
    `area_util_inicial` float DEFAULT NULL,
    `area_util_final` float DEFAULT NULL,
    `edificio` varchar(45) DEFAULT NULL,
    `area_total_inicial` float DEFAULT NULL,
    `area_total_final` float DEFAULT NULL,
    `mobiliado` bit(1) DEFAULT NULL,
    `dormitorio_inicial` int unsigned DEFAULT NULL,
    `dormitorio_final` int unsigned DEFAULT NULL,
    `garagem_inicial` int unsigned DEFAULT NULL,
    `garagem_final` int unsigned DEFAULT NULL,
    `idade_inicial` int unsigned DEFAULT NULL,
    `idade_final` int unsigned DEFAULT NULL,
    `valor_m2_util_inicial` float DEFAULT NULL,
    `valor_m2_util_final` float DEFAULT NULL,
    `testada_inicial` float DEFAULT NULL,
    `testada_final` float DEFAULT NULL,
    `valor_m2_total_inicial` float DEFAULT NULL,
    `valor_m2_total_final` float DEFAULT NULL,
    `cadastrado_inicial` date DEFAULT NULL,
    `cadastrado_final` date DEFAULT NULL,
    `condominio_inicial` float DEFAULT NULL,
    `condominio_final` float DEFAULT NULL,
    `tipo_de_midia_id` int DEFAULT NULL,
    `forma_de_atendimento_id` int DEFAULT NULL,
    `observacoes` text,
    `transacao` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'venda',
    `endereco` varchar(60) DEFAULT NULL,
    `possibilidade` tinyint(1) DEFAULT NULL,
    `valor_possibilidade` float DEFAULT NULL,
    `data_possibilidade` date DEFAULT NULL,
    `area_terreno_inicial` float DEFAULT NULL,
    `area_terreno_final` float DEFAULT NULL,
    `referencias` varchar(255) DEFAULT NULL,
    `ativo` tinyint(1) DEFAULT '1',
    `data_verificacao` datetime DEFAULT NULL,
    `hash` varchar(100) DEFAULT NULL,
    `outros` json DEFAULT NULL,
    `smartemail_automatico` tinyint(1) DEFAULT '0',
    `suites_inicial` int DEFAULT NULL,
    `suites_final` int DEFAULT NULL,
    `cidade_id` int DEFAULT NULL,
    `imovel_id` int DEFAULT NULL,
    `imovel_imobiliaria` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `atendimentos_cliente` (`cliente_id`),
    KEY `atendimentos_tipo_midia` (`tipo_de_midia_id`),
    KEY `atendimentos_usuario` (`corretor_id`),
    CONSTRAINT `atendimentos_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `atendimentos_tipo_midia` FOREIGN KEY (`tipo_de_midia_id`) REFERENCES `tiposdemidia` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `atendimentos_usuario` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 187282 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.categoriasimovel definition

CREATE TABLE `categoriasimovel` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL,
    `categoria_id` int NOT NULL,
    `ordem` int unsigned DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `categoriasimovel_imovel` (`imovel_id`),
    KEY `categoriasimovel_infra` (`categoria_id`),
    CONSTRAINT `categoriasimovel_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `categoriasimovel_infra` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 47497515 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.composicoesimovel definition

CREATE TABLE `composicoesimovel` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL,
    `composicao_id` int NOT NULL,
    `compoem` varchar(10) DEFAULT NULL,
    `ordem` int unsigned DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `composicoesimovel_composicao` (`composicao_id`),
    KEY `composicoesimovel_imovel` (`imovel_id`),
    CONSTRAINT `composicoesimovel_composicao` FOREIGN KEY (`composicao_id`) REFERENCES `composicoes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `composicoesimovel_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 168821318 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.fasesdaobraimovel definition

CREATE TABLE `fasesdaobraimovel` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL,
    `fase_id` int NOT NULL,
    `estagio` varchar(10) DEFAULT NULL,
    `ordem` int unsigned DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `fasesdaobraimovel_imovel` (`imovel_id`),
    KEY `fasesdaobra_fase` (`fase_id`),
    CONSTRAINT `fasesdaobraimovel_fase` FOREIGN KEY (`fase_id`) REFERENCES `fasesdaobra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fasesdaobraimovel_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 131 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.favoritos definition

CREATE TABLE `favoritos` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `imovel_id` int NOT NULL DEFAULT '0',
    `tipo_venda` tinyint(1) DEFAULT NULL,
    `tipo_locacao` tinyint(1) DEFAULT NULL,
    `tipo_lancamento` tinyint(1) DEFAULT NULL,
    `tipo_temporada` tinyint(1) DEFAULT NULL,
    `ip` varchar(25) NOT NULL DEFAULT '',
    `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`Id`),
    KEY `favoritos_imovel` (`imovel_id`),
    CONSTRAINT `favoritos_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 81216 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.fotosimovel definition

CREATE TABLE `fotosimovel` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `foto` varchar(255) NOT NULL DEFAULT '',
    `descricao_id` int DEFAULT NULL,
    `ordem` int unsigned DEFAULT NULL,
    `imovel_id` int NOT NULL,
    `imobiliaria_id` int DEFAULT NULL,
    `galeria_id` int DEFAULT NULL,
    `width` int DEFAULT NULL,
    `height` int DEFAULT NULL,
    `atualizado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `verificada` tinyint(1) NOT NULL DEFAULT '0',
    `edificio_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `fotosimovel_comodo` (`descricao_id`),
    KEY `fotosimovel_imovel` (`imovel_id`),
    KEY `fotosimovel_galeria` (`galeria_id`) USING BTREE,
    KEY `fotosimovel_imobiliaria` (`imobiliaria_id`) USING BTREE,
    CONSTRAINT `fotosimovel_comodo` FOREIGN KEY (`descricao_id`) REFERENCES `comodos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `fotosimovel_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1978281256 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.funil_leads definition

CREATE TABLE `funil_leads` (
    `id` int NOT NULL AUTO_INCREMENT,
    `sequencial` int NOT NULL,
    `titulo` varchar(100) NOT NULL,
    `imobiliaria_id` int NOT NULL,
    `funil_tipo_id` int NOT NULL,
    `funil_etapa_id` int NOT NULL,
    `pedido_id` int DEFAULT NULL,
    `cliente_id` int NOT NULL,
    `mensagem` text,
    `valor_potencial` double DEFAULT NULL,
    `previsao_fechamento` date DEFAULT NULL,
    `midia_id` int DEFAULT NULL,
    `cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `ordem` int DEFAULT '99',
    `status` varchar(20) DEFAULT 'aberto',
    `status_id` int DEFAULT NULL,
    `ligacao_id` int DEFAULT NULL,
    `tipo_cliente` varchar(20) NOT NULL DEFAULT 'cliente',
    `imovel_angariado` int DEFAULT NULL,
    `notificar_corretor` tinyint DEFAULT '0',
    PRIMARY KEY (`id`),
    UNIQUE KEY `funil_leads_sequencial` (
        `sequencial`,
        `imobiliaria_id`
    ),
    KEY `funil_leads_FK_5` (`cliente_id`),
    KEY `funil_leads_FK_4` (`funil_etapa_id`),
    KEY `funil_leads_FK_2` (`funil_tipo_id`),
    KEY `funil_leads_FK_1` (`imobiliaria_id`),
    CONSTRAINT `funil_leads_FK_1` FOREIGN KEY (`imobiliaria_id`) REFERENCES `imobiliarias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `funil_leads_FK_2` FOREIGN KEY (`funil_tipo_id`) REFERENCES `funil_tipos` (`id`),
    CONSTRAINT `funil_leads_FK_4` FOREIGN KEY (`funil_etapa_id`) REFERENCES `funil_etapas` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 108502 DEFAULT CHARSET = latin1;

-- infocenterhost1.funil_leads_responsaveis definition

CREATE TABLE `funil_leads_responsaveis` (
    `id` int NOT NULL AUTO_INCREMENT,
    `responsavel_id` int NOT NULL,
    `funil_lead_id` int NOT NULL,
    PRIMARY KEY (`id`),
    KEY `funil_leads_responsaveis_FK` (`responsavel_id`),
    KEY `funil_leads_responsaveis_FK_1` (`funil_lead_id`),
    CONSTRAINT `funil_leads_responsaveis_FK` FOREIGN KEY (`responsavel_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `funil_leads_responsaveis_FK_1` FOREIGN KEY (`funil_lead_id`) REFERENCES `funil_leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 177974 DEFAULT CHARSET = latin1;

-- infocenterhost1.historicovisita definition

CREATE TABLE `historicovisita` (
    `id` int NOT NULL AUTO_INCREMENT,
    `cliente_id` int DEFAULT NULL,
    `corretor_id` int DEFAULT NULL,
    `data` datetime DEFAULT NULL,
    `texto` text,
    `imovel_id` int DEFAULT NULL,
    `inclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `origem` varchar(40) DEFAULT '',
    `agendamento_id` int DEFAULT NULL,
    `gostou_no_imovel` varchar(255) DEFAULT NULL,
    `nao_gostou_no_imovel` varchar(255) DEFAULT NULL,
    `nota_imovel` tinyint(1) DEFAULT NULL,
    `nota_atendimento` tinyint(1) DEFAULT NULL,
    `sugestoes` text,
    `comentarios` text,
    PRIMARY KEY (`id`),
    KEY `historicovisita_cliente` (`cliente_id`),
    KEY `historicovisita_imovel` (`imovel_id`),
    KEY `historicovisita_usuario` (`corretor_id`),
    CONSTRAINT `historicovisita_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `historicovisita_imovel` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `historicovisita_usuario` FOREIGN KEY (`corretor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11466 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.atendimento_bairros definition

CREATE TABLE `atendimento_bairros` (
    `id` int NOT NULL AUTO_INCREMENT,
    `atendimento_id` int NOT NULL,
    `bairro_id` int NOT NULL,
    PRIMARY KEY (`id`),
    KEY `atendimento_bairros_atendimento` (`atendimento_id`),
    KEY `atendimento_bairros_bairro` (`bairro_id`),
    CONSTRAINT `atendimento_bairros_atendimento` FOREIGN KEY (`atendimento_id`) REFERENCES `atendimentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `atendimento_bairros_bairro` FOREIGN KEY (`bairro_id`) REFERENCES `bairros` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 37008 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.atendimento_imoveis_apresentar definition

CREATE TABLE `atendimento_imoveis_apresentar` (
    `id` int NOT NULL AUTO_INCREMENT,
    `atendimento_id` int NOT NULL,
    `imovel_id` int NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `atendimento_imoveis_apresentar_atendimento` (`atendimento_id`),
    KEY `atendimento_imoveis_apresentar_imovel` (`imovel_id`),
    CONSTRAINT `atendimento_imoveis_apresentar_atendimento` FOREIGN KEY (`atendimento_id`) REFERENCES `atendimentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `atendimento_imoveis_apresentar_imoveis` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 85478 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;

-- infocenterhost1.atendimento_tipos definition

CREATE TABLE `atendimento_tipos` (
    `id` int NOT NULL AUTO_INCREMENT,
    `atendimento_id` int NOT NULL,
    `tipo_id` int NOT NULL,
    PRIMARY KEY (`id`),
    KEY `atendimento_tipos_atendimento` (`atendimento_id`),
    KEY `atendimento_tipos_tipo` (`tipo_id`),
    CONSTRAINT `atendimento_tipos_atendimento` FOREIGN KEY (`atendimento_id`) REFERENCES `atendimentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `atendimento_tipos_tipo` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 136817 DEFAULT CHARSET = latin1 ROW_FORMAT = COMPACT;