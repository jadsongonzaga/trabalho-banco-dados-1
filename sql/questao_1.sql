/*
   Questão 1 - Criação das tabelas do banco.
*/

-- Criação da tabela estado
CREATE TABLE estado(
  id    SERIAL NOT NULL,
  nome  VARCHAR(50) NOT NULL,
  CONSTRAINT pk_estado PRIMARY KEY (id)
);
-- Criação da tabela cidade
CREATE TABLE cidade(
  id            SERIAL NOT NULL,
  id_estado     INTEGER NOT NULL,
  nome          VARCHAR(50) NOT NULL,
  CONSTRAINT pk_cidade PRIMARY KEY (id)
);
-- Criação da tabela bairro
CREATE TABLE bairro(
  id          SERIAL NOT NULL,
  id_cidade		INTEGER NOT NULL,
  nome  		VARCHAR(50) NOT NULL,
  CONSTRAINT pk_bairro PRIMARY KEY (id)
);
-- Criação da tabela endereco
CREATE TABLE endereco(
  id    		SERIAL NOT NULL,
  id_bairro		INTEGER NOT NULL,
  nome  		VARCHAR(50) NOT NULL,
  rua			VARCHAR(50) NOT NULL,
  cep			VARCHAR(10) NOT NULL,
  numero		VARCHAR(4),
  CONSTRAINT pk_endereco PRIMARY KEY (id)
);
-- Criação da tabela pessoa
CREATE TABLE pessoa(
  id        	SERIAL NOT NULL,
  id_endereco	INTEGER NOT NULL,
  nome  		VARCHAR(50) NOT NULL,
  telefone		VARCHAR(15),
  CONSTRAINT pk_pessoa PRIMARY KEY (id)
);

-- Criação da tabela destinatario
CREATE TABLE  destinatario(
	id		INTEGER NOT NULL,
	cpf		VARCHAR(11) NOT NULL,
	CONSTRAINT pk_destinatario PRIMARY KEY (id)
);

-- Criação da tabela cliente
CREATE TABLE cliente(
	id 				INTEGER NOT NULL,
	razao_social	VARCHAR(50) NOT NULL,
	cnpj			VARCHAR(14) NOT NULL,
	CONSTRAINT pk_cliente PRIMARY KEY (id)
);

-- Criação da tabela motorista
CREATE TABLE motorista (
	id 						INTEGER NOT NULL,
	carteira_trabalho		VARCHAR(20) NOT NULL,
	cpf						VARCHAR(14) NOT NULL,
	categoria_habilitacao 	VARCHAR(1) NOT NULL,
	CONSTRAINT pk_motorista PRIMARY KEY (id)
);

-- Criação da tabela veiculo
CREATE TABLE veiculo(
	id 				SERIAL NOT NULL,
	id_motorista 	INTEGER NOT NULL,
	chassi			VARCHAR(20) NOT NULL,
	ano 			INTEGER NOT NULL,
	quantidade_eixo INTEGER,
	carroceria		VARCHAR(50),
	cavalo_mecanico	FLOAT,
	modelo			VARCHAR(20),
	placa			VARCHAR(8) NOT NULL,
	tamanho			FLOAT,
	CONSTRAINT pk_veiculo PRIMARY KEY (id)
);
-- Criação da tabela licenciamento
CREATE TABLE licenciamento(
	numero				INTEGER NOT NULL,
	id_veiculo			INTEGER NOT NULL,
	data_licenciamento 	DATE NOT NULL,
	valor 				FLOAT NOT NULL,
	data_vencimento		DATE NOT NULL,
	CONSTRAINT pk_licenciamento PRIMARY KEY (numero)
);

-- Criação da tabela licenca
CREATE TABLE licenca(
	numero				INTEGER NOT NULL,
	id_veiculo			INTEGER NOT NULL,
	tipo_carga			VARCHAR(30) NOT NULL,
	CONSTRAINT pk_licenca PRIMARY KEY (numero)
);
-- Criação da tabela rota_entrega
CREATE TABLE rota_entrega (
	id 		serial not null, 
	id_veiculo 	integer, 
	data_saida 	date,
	CONSTRAINT pk_rota_entrega PRIMARY KEY(id)
);
-- Criação da tabela tipo
CREATE TABLE tipo (
	id 		serial not null,
	descricao 	varchar(30) not null,
	perigosa 	boolean,
	CONSTRAINT pk_tipo PRIMARY KEY(id)
);
-- Criação da tabela encomenda
CREATE TABLE encomenda(
	id		 		SERIAL NOT NULL,
	id_tipo			  	INTEGER NOT NULL,
	id_destinatario 		INTEGER NOT NULL,
	id_cliente 		INTEGER NOT NULL,
	id_rota  			INTEGER NOT NULl,
	entrege				BOOLEAN,
	data_hora_prevista_chegada  	TIMESTAMP,
	descricao 			VARCHAR(50),
	peso 				FLOAT,
	CONSTRAINT pk_encomenda PRIMARY KEY (id)	
);