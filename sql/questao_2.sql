/*
	Questão 2 - Adição das chaves estrangeiras nas tabelas. 
*/
-- Adição  da chave estrangeira de estado na tabela cidade
ALTER TABLE cidade ADD CONSTRAINT fk_cidade_estado FOREIGN KEY (id_estado) REFERENCES estado(id);
-- Adição  da chave estrangeira de cidade na tabela bairro
ALTER TABLE bairro ADD CONSTRAINT fk_bairro_cidade FOREIGN KEY (id_cidade) REFERENCES cidade(id);
-- Adição  da chave estrangeira de bairro na tabela endereco
ALTER TABLE endereco ADD CONSTRAINT fk_edereco_bairro FOREIGN KEY (id_bairro) REFERENCES bairro(id);
-- Adição da chave estrangeira de endereco na tabela pessoa
ALTER TABLE pessoa ADD CONSTRAINT fk_pessoa_endereco FOREIGN KEY (id_endereco) REFERENCES endereco(id);
-- Adição da chave estrangeira de pessoa na tabela cliente para definir a herança
ALTER TABLE cliente ADD CONSTRAINT fk_cliente_pessoa FOREIGN KEY (id) REFERENCES pessoa (id);
-- Adição da chave estrangeira de pessoa na tabela motorista para definir a herança
ALTER TABLE motorista ADD CONSTRAINT fk_motorista_pessoa FOREIGN KEY  (id) REFERENCES pessoa (id);
-- Adição da chave estrangeira de motorista na tabela veiculo
ALTER TABLE veiculo ADD CONSTRAINT fk_veiculo_motorista FOREIGN KEY (id_motorista) REFERENCES motorista (id);
-- Adição da chave estrangeira na tabela licenciamento referenciando veiculo
ALTER TABLE licenciamento ADD CONSTRAINT fk_licenciamento_veiculo FOREIGN KEY (id_veiculo) REFERENCES veiculo(id);
-- Adição da chave estrangeira na tabela licenca referenciando veiculo
ALTER TABLE licenca ADD CONSTRAINT fk_licenca_veiculo FOREIGN KEY (id_veiculo) REFERENCES veiculo(id);
-- Adição da chave rota_entrega na tabela licenca referenciando veiculo
ALTER TABLE rota_entrega ADD constraint id_veiculo_fk foreign key (id_veiculo) references veiculo (id);
--  Adição da chave rota_entrega na tabela encomenda referenciando tipo
ALTER TABLE encomenda ADD CONSTRAINT fK_encomenda_tipo FOREIGN KEY (id_tipo) REFERENCES tipo(id);
--  Adição da chave estrangeira de pessoa na tabela destinatario para definir a herança
ALTER TABLE encomenda ADD CONSTRAINT fk_encomenda_destinatario FOREIGN KEY (id_destinatario) REFERENCES destinatario(id);
-- Adição da chave rota_entrega na tabela encomenda referenciando rota_entrega
ALTER TABLE encomenda ADD CONSTRAINT fk_encomenda_rota FOREIGN KEY (id_rota) REFERENCES rota_entrega(id);
-- Adição da chave encomenda na tabela encomenda referenciando cliente
ALTER TABLE encomenda ADD CONSTRAINT fk_encomenda_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id);
