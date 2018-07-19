Scritp BD_SGE-A

-- Database: "BD_SGE-A"

-- Table: atividade_economica
-- DROP TABLE atividade_economica;

CREATE TABLE filial (
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_filial VARCHAR(30) NOT NULL DEFAULT '',
  dc_responsavel VARCHAR(30) NOT NULL DEFAULT '',
  dc_endereco VARCHAR(30) NOT NULL DEFAULT '',
  dc_numero CHAR(15) NOT NULL DEFAULT '',
  dc_bairro VARCHAR(25) NOT NULL DEFAULT '',
  dc_cidade VARCHAR(30) NOT NULL DEFAULT '',
  dc_uf CHAR(2) NOT NULL DEFAULT '',
  dc_telefone VARCHAR(25) NOT NULL DEFAULT '',
  PRIMARY KEY(nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

  dt_recebe DATE NOT NULL DEFAULT '0000-00-00',
  nr_codCategoria NUMERIC(2) NOT NULL DEFAULT 0,



CREATE TABLE atividade_economica
(
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: agencia
-- DROP TABLE agencia;

CREATE TABLE agencia
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_nr_agencia CHAR(10) NOT NULL DEFAULT '',
  dc_cod_banco CHAR(10) NOT NULL DEFAULT '',
  dc_nome_agencia VARCHAR(30) NOT NULL DEFAULT '',
  dc_endereco VARCHAR(40) NOT NULL DEFAULT '',
  dc_endereco_bairro VARCHAR(30) NOT NULL DEFAULT '',
  dc_endereco_cidade VARCHAR(40) NOT NULL DEFAULT '',
  dc_endereco_uf CHAR(2) NOT NULL DEFAULT '',
  dc_endereco_cep CHAR(8) NOT NULL DEFAULT '',
  dc_ddd CHAR(3) NOT NULL DEFAULT '',
  dc_telefone VARCHAR(15) NOT NULL DEFAULT '',
  dc_fax_ddd CHAR(3) NOT NULL DEFAULT '',
  dc_fax_numero VARCHAR(15) NOT NULL DEFAULT '',
  dc_contato VARCHAR(30) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  dc_endereco_numero CHAR(7) NOT NULL DEFAULT '',
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- Table: atividade_economica
-- DROP TABLE atividade_economica;

CREATE TABLE atividade_economica
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_atividade_economica VARCHAR(40) NOT NULL DEFAULT '',
  nr_cod_tabela_preco NUMERIC(5) NOT NULL DEFAULT 0,
  lg_atividade_padrao NUMERIC(1) NOT NULL DEFAULT 0,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: banco
-- DROP TABLE banco;

CREATE TABLE banco
(
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_codigo CHAR(10) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  dc_site VARCHAR(100) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: centro_custo
-- DROP TABLE centro_custo;

CREATE TABLE centro_custo
(
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_centro_custo VARCHAR(30) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: cidade
-- DROP TABLE cidade;

CREATE TABLE cidade
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_uf CHAR(2) NOT NULL DEFAULT '',
  dc_cidade VARCHAR(40) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: cliente
-- DROP TABLE cliente;

CREATE TABLE cliente
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_regiao NUMERIC(5) NOT NULL DEFAULT 0,
  nr_cod_atividade_economica NUMERIC(5) NOT NULL DEFAULT 0,
  nr_cod_pais NUMERIC(5) NOT NULL DEFAULT 0,
  dt_cadastro_cliente DATE NOT NULL DEFAULT '0000-00-00',
  dc_tipo_pessoa CHAR(1) NOT NULL DEFAULT '',
  dc_cgc_cpf VARCHAR(14) NOT NULL DEFAULT '',
  lg_consumidor NUMERIC(1) NOT NULL DEFAULT 0,
  lg_contribuinte NUMERIC(1) NOT NULL DEFAULT 0,
  dc_razao_social VARCHAR(40) NOT NULL DEFAULT '',
  dc_nome_fantasia VARCHAR(40) NOT NULL DEFAULT '',
  dc_endereco VARCHAR(40) NOT NULL DEFAULT '',
  dc_endereco_complemento VARCHAR(25) NOT NULL DEFAULT '',
  dc_endereco_bairro VARCHAR(30) NOT NULL DEFAULT '',
  dc_endereco_cidade VARCHAR(40) NOT NULL DEFAULT '',
  dc_endereco_cep CHAR(8) NOT NULL DEFAULT '',
  dc_telefone1 VARCHAR(25) NOT NULL DEFAULT '',
  dc_telefone2 VARCHAR(25) NOT NULL DEFAULT '',
  dc_fax VARCHAR(25) NOT NULL DEFAULT '',
  dc_endereco_site VARCHAR(200) NOT NULL DEFAULT '',
  dc_e_mail VARCHAR(200) NOT NULL DEFAULT '',
  dc_entrega_endereco VARCHAR(40) NOT NULL DEFAULT '',
  dc_entrega_complemento VARCHAR(25) NOT NULL DEFAULT '',
  dc_entrega_cep CHAR(8) NOT NULL DEFAULT '',
  dc_entrega_bairro VARCHAR(30) NOT NULL DEFAULT '',
  nr_cod_entrega_pais NUMERIC(5) NOT NULL DEFAULT 0,
  dc_entrega_cidade VARCHAR(40) NOT NULL DEFAULT '',
  dc_entrega_ponto_referencia VARCHAR(200) NOT NULL DEFAULT '',
  dc_cobranca_endereco VARCHAR(40) NOT NULL DEFAULT '',
  dc_cobranca_complemento VARCHAR(25) NOT NULL DEFAULT '',
  dc_cobranca_bairro VARCHAR(30) NOT NULL DEFAULT '',
  nr_cod_cobranca_pais NUMERIC(5) NOT NULL DEFAULT 0,
  dc_cobranca_cidade VARCHAR(40) NOT NULL DEFAULT '',
  dc_inscricao_estadual VARCHAR(20) NOT NULL DEFAULT '',
  dc_inscricao_municipal VARCHAR(20) NOT NULL DEFAULT '',
  dc_observacao TEXT NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  dc_endereco_numero VARCHAR(15) NOT NULL DEFAULT '',
  dc_ddd_fax CHAR(10) NOT NULL DEFAULT '',
  dc_cobranca_cep CHAR(8) NOT NULL DEFAULT '',
  dc_entrega_numero VARCHAR(15) NOT NULL DEFAULT '',
  dc_cobranca_numero VARCHAR(15) NOT NULL DEFAULT '',
  dc_ddd1 CHAR(10) NOT NULL DEFAULT '',
  dc_ddd2 CHAR(10) NOT NULL DEFAULT '',
  dc_entrega_estado CHAR(2) NOT NULL DEFAULT '',
  dc_cobranca_estado CHAR(2) NOT NULL DEFAULT '',
  dc_endereco_estado CHAR(2) NOT NULL DEFAULT '',
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: empresa
-- DROP TABLE empresa;

CREATE TABLE empresa
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_pais NUMERIC(5) NOT NULL DEFAULT 0,
  dc_uf CHAR(2) NOT NULL DEFAULT '',
  nr_cod_cidade NUMERIC(5) NOT NULL DEFAULT 0,
  dc_cnpj CHAR(14) NOT NULL DEFAULT '',
  dc_inscricao_estadual VARCHAR(20) NOT NULL DEFAULT '',
  dc_inscricao_municipal VARCHAR(20) NOT NULL DEFAULT '',
  nr_codigo_inscricao_municipal NUMERIC(5) NOT NULL DEFAULT 0,
  dc_razao_social VARCHAR(100) NOT NULL DEFAULT '',
  dc_nome_fantasia VARCHAR(100) NOT NULL DEFAULT '',
  dc_endereco VARCHAR(100) NOT NULL DEFAULT '',
  dc_end_numero CHAR(10) NOT NULL DEFAULT '',
  dc_end_complemento VARCHAR(25) NOT NULL DEFAULT '',
  dc_end_bairro VARCHAR(40) NOT NULL DEFAULT '',
  dc_end_cep CHAR(8) NOT NULL DEFAULT '',
  dc_ddd_telefone CHAR(4) NOT NULL DEFAULT '',
  dc_nr_telefone VARCHAR(20) NOT NULL DEFAULT '',
  dc_nr_ramal CHAR(10) NOT NULL DEFAULT '',
  dc_ddd_fax CHAR(4) NOT NULL DEFAULT '',
  dc_nr_fax VARCHAR(20) NOT NULL DEFAULT '',
  dc_email VARCHAR(150) NOT NULL DEFAULT '',
  dc_site VARCHAR(150) NOT NULL DEFAULT '',
  dc_logo_empresa VARCHAR(150) NOT NULL DEFAULT '',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: estado
-- DROP TABLE estado;

CREATE TABLE estado
(
  nr_codigo INT(2) AUTO_INCREMENT,
  dc_nome_estado VARCHAR(30) NOT NULL DEFAULT '',
  dc_uf CHAR(2) NOT NULL DEFAULT '',
  nr_aliquota_icms NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_aliquota_icms_entrada NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE filial (
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_filial VARCHAR(30) NOT NULL DEFAULT '',
  dc_responsavel VARCHAR(30) NOT NULL DEFAULT '',
  dc_endereco VARCHAR(30) NOT NULL DEFAULT '',
  dc_numero CHAR(15) NOT NULL DEFAULT '',
  dc_bairro VARCHAR(25) NOT NULL DEFAULT '',
  dc_cidade VARCHAR(30) NOT NULL DEFAULT '',
  dc_uf CHAR(2) NOT NULL DEFAULT '',
  dc_telefone VARCHAR(25) NOT NULL DEFAULT '',
  PRIMARY KEY(nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table: fornecedor
-- DROP TABLE fornecedor;

CREATE TABLE fornecedor
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_tipo_pessoa CHAR(1) NOT NULL DEFAULT '',
  dc_cgc_cpf CHAR(14) NOT NULL DEFAULT '',
  dc_inscricao_estadual VARCHAR(20) NOT NULL DEFAULT '',
  dc_inscricao_municipal VARCHAR(20) NOT NULL DEFAULT '',
  dc_razao_social VARCHAR(40) NOT NULL DEFAULT '',
  dc_nome_fantasia VARCHAR(40) NOT NULL DEFAULT '',
  nr_cod_atividade_economica NUMERIC(5) NOT NULL DEFAULT 0,
  dc_endereco VARCHAR(40) NOT NULL DEFAULT '',
  nr_endereco_numero NUMERIC(7) NOT NULL DEFAULT 0,
  dc_endereco_complemento VARCHAR(25) NOT NULL DEFAULT '',
  dc_endereco_bairro VARCHAR(30) NOT NULL DEFAULT '',
  dc_endereco_cidade VARCHAR(30) NOT NULL DEFAULT '',
  dc_endereco_cep CHAR(8) NOT NULL DEFAULT '',
  nr_endereco_dc_uf CHAR(2) NOT NULL DEFAULT '',
  nr_endereco_cod_pais NUMERIC(5) NOT NULL DEFAULT 0,
  nr_endereco_cod_regiao NUMERIC(5) NOT NULL DEFAULT 0,
  dc_ddd CHAR(3) NOT NULL DEFAULT '',
  dc_telefone1 CHAR(10) NOT NULL DEFAULT '',
  dc_telefone2 CHAR(10) NOT NULL DEFAULT '',
  dc_fax_ddd CHAR(3) NOT NULL DEFAULT '',
  dc_fax_numero CHAR(10) NOT NULL DEFAULT '',
  dc_site_empresa VARCHAR(100) NOT NULL DEFAULT '',
  dc_e_mail VARCHAR(100) NOT NULL DEFAULT '',
  nr_previsao_entrega NUMERIC(5) NOT NULL DEFAULT 0,
  nr_cod_condicao_pagamento NUMERIC(5) NOT NULL DEFAULT 0,
  nr_cod_transportadora NUMERIC(5) NOT NULL DEFAULT 0,
  nr_desconto_porcentagem NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  dc_observacao TEXT,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: funcionario
-- DROP TABLE funcionario;

CREATE TABLE funcionario
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_nome_funcionario VARCHAR(40) NOT NULL DEFAULT '',
  dc_apelido VARCHAR(30) NOT NULL DEFAULT '',
  dc_rg CHAR(11) NOT NULL DEFAULT '',
  dc_cpf CHAR(14) NOT NULL DEFAULT '',
  dt_nascimento DATE NOT NULL DEFAULT '0000-00-00',
  dc_endereco VARCHAR(40) NOT NULL DEFAULT '',
  nr_endereco_numero NUMERIC(7) NOT NULL DEFAULT 0,
  dc_endereco_bairro VARCHAR(30) NOT NULL DEFAULT '',
  dc_endereco_cidade VARCHAR(40) NOT NULL DEFAULT '',
  dc_endereco_uf CHAR(2) NOT NULL DEFAULT '',
  dc_cep CHAR(8) NOT NULL DEFAULT'',
  dc_ddd1 CHAR(3) NOT NULL DEFAULT '',
  dc_telefone1 VARCHAR(20) NOT NULL DEFAULT '',
  dc_ddd2 CHAR(3) NOT NULL DEFAULT '',
  dc_telefone2 VARCHAR(20) NOT NULL DEFAULT '',
  dc_e_mail VARCHAR(100) NOT NULL DEFAULT '',
  dc_cargo VARCHAR(30) NOT NULL DEFAULT '',
  nr_salario NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  qt_horas NUMERIC(5) NOT NULL DEFAULT 0,
  nr_valor_hora NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_porcentagem_comissao NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_gratificacao NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dc_foto VARCHAR(100) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- Table: linha_produto_servico
-- DROP TABLE linha_produto_servico;

CREATE TABLE linha_produto_servico
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  nr_perc_comissao NUMERIC(6,2) NOT NULL DEFAULT 0,
  nr_vendas_centro_custo NUMERIC(5) NOT NULL DEFAULT 0,
  nr_custo_centro_custo NUMERIC(5) NOT NULL DEFAULT 0,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: moeda
-- DROP TABLE moeda;

CREATE TABLE moeda
(
  dc_codigo CHAR(3) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(25) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '',
  dt_alttime DATE NOT NULL DEFAULT '',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (dc_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: pais
-- DROP TABLE pais;

CREATE TABLE pais
(
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_nome_pais VARCHAR(30) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: produto_consumo
-- DROP TABLE produto_consumo;

CREATE TABLE produto_consumo
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_cod_medida CHAR(3) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table: produto
-- DROP TABLE produto;

CREATE TABLE produto
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_linha_produto_servico NUMERIC(5) NOT NULL DEFAULT 0,
  dc_produto VARCHAR(30) NOT NULL DEFAULT '',
  dc_descricao_detalhada TEXT NOT NULL DEFAULT '',
  nr_custo_padrao NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_demora NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_custo_medio NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_custo_compra NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_porc_lucro_estimado NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_preco_basico NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_preco_tabela1 NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_preco_tabela2 NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_preco_tabela3 NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dt_preco_vingencia DATE NOT NULL DEFAULT '0000-00-00',
  nr_icms_compra NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_icms_venda NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  lg_ipi_incluso NUMERIC(1) NOT NULL DEFAULT 0,
  nr_ipi_compra NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_ipi_venda NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_qtd_estoque_desejado NUMERIC(10) NOT NULL DEFAULT 0,
  nr_qtd_estoque_reservado NUMERIC(10) NOT NULL DEFAULT 0,
  nr_qtd_estoque_minimo NUMERIC(10) NOT NULL DEFAULT 0,
  nr_qtd_estoque_critico NUMERIC(10) NOT NULL DEFAULT 0,
  nr_qtd_estoque_consumo NUMERIC(10) NOT NULL DEFAULT 0,
  dc_imagem_produto TEXT NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: regiao
-- DROP TABLE regiao;

CREATE TABLE regiao
(
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_regiao VARCHAR(40) NOT NULL DEFAULT '',
  lg_regiao_padrao NUMERIC(1) NOT NULL DEFAULT 0,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: servico
-- DROP TABLE servico;

CREATE TABLE servico
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_linha_produto_servico numeric(5,0) NOT NULL DEFAULT 0,
  dc_cod_medida CHAR(3) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  dc_descricao_detalhada TEXT NOT NULL DEFAULT '',
  lg_ativo NUMERIC(1) NOT NULL DEFAULT 0,
  nr_custo_medio NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_custo_mercado NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_perc_lucro NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_compra_preco NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_venda_basica NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_venda_tabela1 NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_venda_tabela2 NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_venda_tabela3 NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_perc_iss NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  lg_iss_incluso NUMERIC(1) NOT NULL DEFAULT 0,
  dt_preco_vingencia DATE NOT NULL DEFAULT '0000-00-00',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: tipo_documento
-- DROP TABLE tipo_documento;

CREATE TABLE tipo_documento
(
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_codigo CHAR(3) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (dc_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: transportadora
-- DROP TABLE transportadora;

CREATE TABLE transportadora
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_endereco_pais NUMERIC(5) NOT NULL DEFAULT 0,
  nr_endereco_estado NUMERIC(2) NOT NULL DEFAULT 0,
  dc_cgc CHAR(14) NOT NULL DEFAULT '',
  dc_inscricao_estadual VARCHAR(20) NOT NULL DEFAULT '',
  dc_razao_social VARCHAR(40) NOT NULL DEFAULT '',
  dc_endereco VARCHAR(40) NOT NULL DEFAULT '',
  nr_endereco_numero NUMERIC(7) NOT NULL DEFAULT 0,
  dc_endereco_complemento VARCHAR(25) NOT NULL DEFAULT '',
  dc_endereco_bairro VARCHAR(30) NOT NULL DEFAULT '',
  dc_endereco_cidade VARCHAR(40) NOT NULL DEFAULT '',
  dc_endereco_cep CHAR(8) NOT NULL DEFAULT '',
  dc_ddd1 CHAR(3) NOT NULL DEFAULT '',
  dc_telefone1 VARCHAR(15) NOT NULL DEFAULT '',
  dc_ddd2 VARCHAR(15) NOT NULL DEFAULT '',
  dc_telefone2 VARCHAR(15) NOT NULL DEFAULT '',
  dc_fax_ddd CHAR(3) NOT NULL DEFAULT '',
  dc_fax_numero VARCHAR(15) NOT NULL DEFAULT '',
  dc_site_empresa VARCHAR(100) NOT NULL DEFAULT '',
  dc_e_mail VARCHAR(100) NOT NULL DEFAULT '',
  dc_observacao TEXT NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: unidade_medida
-- DROP TABLE unidade_medida;

CREATE TABLE unidade_medida
(
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_codigo CHAR(3) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  lg_medida_padrao NUMERIC(1) NOT NULL DEFAULT 0,
  dt_inctime DATE NOT NULL DEFAULT '',
  dt_alttime DATE NOT NULL DEFAULT '',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (dc_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table: carteiraCobranca
-- DROP TABLE carteiraCobranca;

CREATE TABLE carteiraCobranca
(
  dc_juros_periodo CHAR(2) NOT NULL DEFAULT '',
  dc_juros_tipo CHAR(1) NOT NULL DEFAULT '',
  nr_juros_perc NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_taxa_bancaria NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_despesa_cartorio NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  qt_dias_compensacao NUMERIC(5) NOT NULL DEFAULT 0,
  dc_juros_conta_contab VARCHAR(15) NOT NULL DEFAULT '',
  dc_taxa_bancaria_conta_contab VARCHAR(15) NOT NULL DEFAULT '',
  dc_despesa_cartorio_conta_contab VARCHAR(15) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (dc_juros_periodo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: classificacaoFiscal
-- DROP TABLE classificacaoFiscal;

CREATE TABLE classificacaoFiscal
(
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_ncm CHAR(15) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: codigoTributacao
-- DROP TABLE codigoTributacao;

CREATE TABLE codigoTributacao
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_codigo VARCHAR(15) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: condicaoPagamento
-- DROP TABLE condicaoPagamento;

CREATE TABLE condicaoPagamento
(
  nr_codigo INT(5) AUTO_INCREMENT,
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  nr_perc_encargos NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_qtd_parcelas NUMERIC(5) NOT NULL DEFAULT 0,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: configuracaoEmail
-- DROP TABLE configuracaoEmail;

CREATE TABLE configuracaoEmail
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_smtp VARCHAR(250) NOT NULL DEFAULT '',
  dc_email_origem VARCHAR(250) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: contaBancaria
-- DROP TABLE contaBancaria;

CREATE TABLE contaBancaria
(
  dc_nr_agencia CHAR(10) NOT NULL DEFAULT '',
  dc_nr_conta VARCHAR(20) NOT NULL DEFAULT '',
  fk_cad_bancos CHAR(10) NOT NULL DEFAULT '',
  dc_tipo_conta CHAR(2) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  nr_limite NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (dc_nr_agencia, dc_nr_conta, fk_cad_bancos)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: contasPagar
-- DROP TABLE contasPagar;

CREATE TABLE contasPagar
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_tipoDocumento CHAR(3) NOT NULL DEFAULT '',
  nr_cod_centroCusto NUMERIC(5) NOT NULL DEFAULT '',
  nr_cod_classificacaoFiscal NUMERIC(5) NOT NULL DEFAULT 0,
  nr_cod_fornecedor NUMERIC(5) NOT NULL DEFAULT 0,
  dc_historico TEXT NOT NULL DEFAULT '',
  dt_vencimento DATE NOT NULL DEFAULT '0000-00-00',
  nr_qtd_parcelas NUMERIC(5) NOT NULL DEFAULT 0,
  nr_valor_principal NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dc_nr_documento VARCHAR(25) NOT NULL DEFAULT '',
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: contasReceber
-- DROP TABLE contasReceber;

CREATE TABLE contasReceber
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_cod_tipoDocumento CHAR(3) NOT NULL DEFAULT '',
  nr_cod_centroCusto NUMERIC(5) NOT NULL DEFAULT 0,
  nr_cod_classificacaoFiscal numeric(5) NOT NULL DEFAULT 0,
  nr_cod_fornecedor NUMERIC(5) NOT NULL DEFAULT 0,
  dc_nr_documento VARCHAR(15) NOT NULL DEFAULT '',
  dt_vencimento DATE NOT NULL DEFAULT '0000-00-00',
  nr_parcela NUMERIC(5) NOT NULL DEFAULT 0,
  dt_lancamento DATE NOT NULL DEFAULT '0000-00-00',
  nr_valor_documento NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dc_historico TEXT NOT NULL DEFAULT '',
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: cotacaoMoeda
-- DROP TABLE cotacaoMoeda;

CREATE TABLE cotacaoMoeda
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_cod_moeda CHAR(3) NOT NULL DEFAULT '',
  nr_valor_moeda NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dt_cotacao DATE NOT NULL DEFAULT '0000-00-00',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: fornecedor_contato
-- DROP TABLE fornecedor_contato;

CREATE TABLE fornecedor_contato
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_fornecedor NUMERIC(5) NOT NULL DEFAULT 0,
  dc_nome_contato VARCHAR(40) NOT NULL DEFAULT '',
  dc_sexo CHAR(1) NOT NULL DEFAULT '',
  dc_cargo VARCHAR(30) NOT NULL DEFAULT '',
  dc_ramal CHAR(10) NOT NULL DEFAULT '',
  dc_e_mail VARCHAR(100) NOT NULL DEFAULT '',
  dt_nascimento DATE NOT NULL DEFAULT '0000-00-00',
  dc_ddd CHAR(3) NOT NULL DEFAULT '',
  dc_fone_residencial CHAR(10) NOT NULL DEFAULT '',
  dc_fax_ddd CHAR(3) NOT NULL DEFAULT '',
  dc_fax_numero CHAR(10) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: naturezaOperacao
-- DROP TABLE naturezaOperacao;

CREATE TABLE naturezaOperacao
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_cfop CHAR(10) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  dc_texto_nota_fiscal VARCHAR(30) NOT NULL DEFAULT '',
  dc_tipo_operacao CHAR(3) NOT NULL DEFAULT '',
  lg_origem_vendas NUMERIC(1) NOT NULL DEFAULT 0,
  lg_destino_interestadual NUMERIC(1) NOT NULL DEFAULT 0,
  lg_comissao NUMERIC(1) NOT NULL DEFAULT 0,
  nr_perc_comissao NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  lg_comissao_gera_conta_receber_pagar NUMERIC(1) NOT NULL DEFAULT 0,
  lg_gera_estoque NUMERIC(1) NOT NULL DEFAULT 0,
  lg_gera_icms NUMERIC(1) NOT NULL DEFAULT 0,
  lg_gera_imposto_faturamento NUMERIC(1) NOT NULL DEFAULT 0,
  lg_gera_ipi NUMERIC(1) NOT NULL DEFAULT 0,
  dc_dispositivos_legais TEXT NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: nivelUsuario
-- DROP TABLE nivelUsuario;

CREATE TABLE nivelUsuario
(
  nr_nivel INT(5) AUTO_INCREMENT,
  dc_nivel VARCHAR(25) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_nivel)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: pedidoCompra
-- DROP TABLE pedidoCompra;

CREATE TABLE pedidoCompra
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_naturezaOperacao NUMERIC(5) NOT NULL DEFAULT 0,
  nr_cod_transportadora NUMERI(5) NOT NULL DEFAULT 0,
  nr_cod_fornecedor NUMERIC(5) NOT NULL DEFAULT 0,
  dt_pedido DATE NOT NULL DEFAULT '0000-00-00',
  dt_entrega DATE NOT NULL DEFAULT '0000-00-00',
  dc_cif_fob CHAR(1) NOT NULL DEFAULT '',
  nr_perc_desconto NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_valor_icms NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_valor_ipi NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_valor_iss NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_valor_frete NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dc_tipo_uso CHAR(1) NOT NULL DEFAULT '',
  nr_usuario_autorizacao NUMERIC(5) NOT NULL DEFAULT 0,
  nr_usuario_solicitante NUMERIC(5) NOT NULL DEFAULT 0,
  dc_status CHAR(1) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  lg_orcamento NUMERIC(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: pedidoCompraItem
-- DROP TABLE pedidoCompraItem;

CREATE TABLE pedidoCompraItem
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_pedidoCompra NUMERIC(10) NOT NULL DEFAULT 0,
  nr_quantidade NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_preco_unitario NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_preco_total NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_perc_ipi NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_perc_icms NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_valor_ipi NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_valor_icms NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_perc_desconto NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_valor_desconto NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_perc_mc NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_valor_mc NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- Table: pedidoVenda
-- DROP TABLE pedidoVenda;

CREATE TABLE pedidoVenda
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_transportadora NUMERIC(5) NOT NULL DEFAULT 0,
  nr_cod_cliente NUMERIC(10) NOT NULL DEFAULT 0,
  dt_pedido DATE NOT NULL DEFAULT '0000-00-00',
  nr_codigo_vendedor NUMERIC(5) NOT NULL DEFAULT 0,
  dc_cif_fob CHAR(1) NOT NULL DEFAULT '',
  dt_entrega DATE NOT NULL DEFAULT '0000-00-00',
  dc_observacao TEXT NOT NULL DEFAULT '',
  dc_cpf_cgc CHAR(14) NOT NULL DEFAULT '',
  lg_orcamento NUMERIC(1) NOT NULL DEFAULT 0,
  dc_status CHAR(1) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: pedidoVendaItem
-- DROP TABLE pedidoVendaItem;

CREATE TABLE pedidoVendaItem
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_produto NUMERIC(5) NOT NULL DEFAULT 0,
  nr_pedidoVenda NUMERIC(10) NOT NULL DEFAULT 0,
  nr_quantidade NUMERIC(10,2) NOT NULL DEFAULT 0,
  nr_preco_unitario NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_preco_total NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_perc_ipi NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_valor_ipi NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_perc_icms NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_valor_icms NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_perc_desconto NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_valor_desconto NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table: planoContas
-- DROP TABLE planoContas;

CREATE TABLE planoContas
(
  dc_codigo CHAR(15) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(30) NOT NULL DEFAULT '',
  dc_classificacao CHAR(1) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (dc_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: reducaoIcms
-- DROP TABLE reducaoIcms;

CREATE TABLE reducaoIcms
(
  nr_codigo INT(10) AUTO_INCREMENT,
  dc_uf CHAR(2) NOT NULL DEFAULT '',
  nr_reducao NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  nr_perc_reducao_icms NUMERIC(5,2) NOT NULL DEFAULT 0.00,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: requisicaoMaterial
-- DROP TABLE requisicaoMaterial;

CREATE TABLE requisicaoMaterial
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_centro_custo_consumidor NUMERIC(5) NOT NULL DEFAULT 0,
  nr_funcionario_aprovou NUMERIC(5) NOT NULL DEFAULT 0,
  nr_funcionario_solicitante NUMERIC(5) NOT NULL DEFAULT 0,
  dc_status CHAR(2) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: requisicaoMaterialItem
-- DROP TABLE requisicaoMaterialItem;

CREATE TABLE requisicaoMaterialItem
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_produtoConsumo NUMERIC(10) NOT NULL DEFAULT 0,
  nr_requisicaoMaterial NUMERIC(5) NOT NULL DEFAULT 0,
  dc_cod_medida CHAR(3) NOT NULL DEFAULT '',
  nr_custo NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  nr_qtd_produto NUMERIC(10,2) NOT NULL DEFAULT 0.00,
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Table: tabelaPreco
-- DROP TABLE tabelaPreco;

CREATE TABLE tabelaPreco
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_classificacao_fiscal NUMERIC(5) NOT NULL DEFAULT 0,
  nr_cod_linha_produto_servico NUMERIC(5) NOT NULL DEFAULT 0,
  dc_tipo_tabela CHAR(1) NOT NULL DEFAULT '',
  dc_descricao VARCHAR(25) NOT NULL DEFAULT '',
  dt_validade_ini DATE NOT NULL DEFAULT '0000-00-00',
  dt_validade_fim DATE NOT NULL DEFAULT '0000-00-00',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- Table: transportadoraContatos
-- DROP TABLE transportadoraContatos;

CREATE TABLE transportadoraContatos
(
  nr_codigo INT(10) AUTO_INCREMENT,
  nr_cod_transportadora NUMERIC(5) NOT NULL DEFAULT 0,
  dc_nome_contato VARCHAR(40) NOT NULL DEFAULT '',
  dc_ddd CHAR(3) NOT NULL DEFAULT '',
  dc_telefone VARCHAR(15) NOT NULL DEFAULT '',
  dc_ramal CHAR(10) NOT NULL DEFAULT '',
  dt_inctime DATE NOT NULL DEFAULT '0000-00-00',
  dt_alttime DATE NOT NULL DEFAULT '0000-00-00',
  nr_usuario_edicao NUMERIC(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (nr_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE usuario (
  nr_codigo INT(6) AUTO_INCREMENT,
  dc_nomeUsuario VARCHAR(30) NOT NULL DEFAULT '',
  dc_login VARCHAR(25) NOT NULL DEFAULT '',
  dc_senha CHAR(10) NOT NULL DEFAULT '',
  nr_nivel NUMERIC(2) NOT NULL DEFAULT 0,
  dc_cargo VARCHAR(30) NOT NULL DEFAULT '',
  nr_codFilial NUMERIC(5) NOT NULL DEFAULT 0,
  lg_ativo NUMERIC(1) NOT NULL DEFAULT 0,
  PRIMARY KEY(nr_codigo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE INDEX ix_dc_login on usuario (dc_login)


