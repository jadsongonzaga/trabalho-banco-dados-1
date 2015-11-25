--	Questão 3. a - Adição do atributo uf na tabela estado
ALTER TABLE estado ADD COLUMN uf VARCHAR(2);

--  Questão 3. b - Criação do domínio dsexo
CREATE DOMAIN dsexo AS CHAR(1)
	CHECK (VALUE IN('f','F','m','M'));
	
--  Questão 3. c - Adição da coluna sexo na tabela motorista do tipo dsexo
ALTER TABLE motorista ADD COLUMN sexo dsexo;

--  Questão 3. d - Alteração da coluna 'perigosa' da tabela tipo para defir false como valor padrão
ALTER TABLE tipo ALTER COLUMN perigosa SET DEFAULT false;

-- Questão 3. e - Exclusão da chave estrangeira de cliente na tabela encomenda 
ALTER TABLE encomenda DROP CONSTRAINT fk_encomenda_cliente;

-- Adição da chave encomenda na tabela encomenda referenciando cliente
ALTER TABLE encomenda ADD CONSTRAINT fk_encomenda_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id);