
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 05/08/2015 às 22:19:35
-- Versão do Servidor: 10.0.20-MariaDB
-- Versão do PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `u878230588_teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos`
--

CREATE TABLE IF NOT EXISTS `anexos` (
  `idAnexos` int(11) NOT NULL AUTO_INCREMENT,
  `anexo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os_id` int(11) NOT NULL,
  PRIMARY KEY (`idAnexos`),
  KEY `fk_anexos_os1` (`os_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('67cf73cbf49108fdd4f191e6d5d9934c', '201.54.109.9', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438396957, ''),
('7a8af9b9c2064451382f17a1a79c9748', '191.34.90.28', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1436912443, 'a:5:{s:9:"user_data";s:0:"";s:4:"nome";s:5:"admin";s:2:"id";s:1:"1";s:9:"permissao";s:1:"1";s:6:"logado";b:1;}'),
('10320d2f36e3d4d233ce7cc2fc5d04fc', '179.187.232.197', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1435527974, ''),
('8db384bacda7951c44ed843a0de403bf', '200.233.112.185', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36', 1436560367, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `idClientes` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(255) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE IF NOT EXISTS `documentos` (
  `idDocumentos` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tamanho` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDocumentos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emitente`
--

CREATE TABLE IF NOT EXISTS `emitente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnpj` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ie` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rua` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_logo` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_vendas`
--

CREATE TABLE IF NOT EXISTS `itens_de_vendas` (
  `idItens` int(11) NOT NULL AUTO_INCREMENT,
  `subTotal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `vendas_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  PRIMARY KEY (`idItens`),
  KEY `fk_itens_de_vendas_vendas1` (`vendas_id`),
  KEY `fk_itens_de_vendas_produtos1` (`produtos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lancamentos`
--

CREATE TABLE IF NOT EXISTS `lancamentos` (
  `idLancamentos` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` varchar(15) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT NULL,
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLancamentos`),
  KEY `fk_lancamentos_clientes1` (`clientes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE IF NOT EXISTS `os` (
  `idOs` int(11) NOT NULL AUTO_INCREMENT,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoProduto` varchar(150) DEFAULT NULL,
  `defeito` varchar(150) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` varchar(150) DEFAULT NULL,
  `laudoTecnico` varchar(150) DEFAULT NULL,
  `valorTotal` varchar(15) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idOs`),
  KEY `fk_os_clientes1` (`clientes_id`),
  KEY `fk_os_usuarios1` (`usuarios_id`),
  KEY `fk_os_lancamentos1` (`lancamento`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes`
--

CREATE TABLE IF NOT EXISTS `permissoes` (
  `idPermissao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `permissoes` text COLLATE utf8_unicode_ci,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`idPermissao`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `permissoes`
--

INSERT INTO `permissoes` (`idPermissao`, `nome`, `permissoes`, `situacao`, `data`) VALUES
(1, 'Administrador', 'a:38:{s:8:"aCliente";s:1:"1";s:8:"eCliente";s:1:"1";s:8:"dCliente";s:1:"1";s:8:"vCliente";s:1:"1";s:8:"aProduto";s:1:"1";s:8:"eProduto";s:1:"1";s:8:"dProduto";s:1:"1";s:8:"vProduto";s:1:"1";s:8:"aServico";s:1:"1";s:8:"eServico";s:1:"1";s:8:"dServico";s:1:"1";s:8:"vServico";s:1:"1";s:3:"aOs";s:1:"1";s:3:"eOs";s:1:"1";s:3:"dOs";s:1:"1";s:3:"vOs";s:1:"1";s:6:"aVenda";s:1:"1";s:6:"eVenda";s:1:"1";s:6:"dVenda";s:1:"1";s:6:"vVenda";s:1:"1";s:8:"aArquivo";s:1:"1";s:8:"eArquivo";s:1:"1";s:8:"dArquivo";s:1:"1";s:8:"vArquivo";s:1:"1";s:11:"aLancamento";s:1:"1";s:11:"eLancamento";s:1:"1";s:11:"dLancamento";s:1:"1";s:11:"vLancamento";s:1:"1";s:8:"cUsuario";s:1:"1";s:9:"cEmitente";s:1:"1";s:10:"cPermissao";s:1:"1";s:7:"cBackup";s:1:"1";s:8:"rCliente";s:1:"1";s:8:"rProduto";s:1:"1";s:8:"rServico";s:1:"1";s:3:"rOs";s:1:"1";s:6:"rVenda";s:1:"1";s:11:"rFinanceiro";s:1:"1";}', 1, '2014-09-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `idProdutos` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProdutos`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_os`
--

CREATE TABLE IF NOT EXISTS `produtos_os` (
  `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idProdutos_os`),
  KEY `fk_produtos_os_os1` (`os_id`),
  KEY `fk_produtos_os_produtos1` (`produtos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE IF NOT EXISTS `servicos` (
  `idServicos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idServicos`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_os`
--

CREATE TABLE IF NOT EXISTS `servicos_os` (
  `idServicos_os` int(11) NOT NULL AUTO_INCREMENT,
  `os_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idServicos_os`),
  KEY `fk_servicos_os_os1` (`os_id`),
  KEY `fk_servicos_os_servicos1` (`servicos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `nivel` int(11) NOT NULL,
  `permissoes_id` int(11) NOT NULL,
  PRIMARY KEY (`idUsuarios`),
  KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `rg`, `cpf`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `nivel`, `permissoes_id`) VALUES
(1, 'admin', 'MG-25.502.560', '600.021.520-87', 'Rua Acima', '12', 'Alvorada', 'Teste', 'MG', 'admin@admin.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0000-0000', '', 1, '2013-11-22', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE IF NOT EXISTS `vendas` (
  `idVendas` int(11) NOT NULL AUTO_INCREMENT,
  `dataVenda` date DEFAULT NULL,
  `valorTotal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desconto` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faturado` tinyint(1) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) DEFAULT NULL,
  `lancamentos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVendas`),
  KEY `fk_vendas_clientes1` (`clientes_id`),
  KEY `fk_vendas_usuarios1` (`usuarios_id`),
  KEY `fk_vendas_lancamentos1` (`lancamentos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
