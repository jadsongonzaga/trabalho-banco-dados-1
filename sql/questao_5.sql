-- Questão 5

--   Questão 5.a - Alteração da dados da tabela encomenda. Atualização de todas as encomenda para status de entregue false.
	UPDATE encomenda SET entrege = 'false';
 
-- Questão 5.b - Alteração da dados da tabela encomenda. Atualizar status de entregue para true se a data prevista para chegada for menor que a data atual.
	UPDATE encomenda SET entrege = 'true' WHERE data_hora_prevista_chegada < '2015-11-25';

-- Questão 5.c - Alteração dos dados da tabela veiculo. atualizar carroceria para tanque onde o id_motorista for igual a 24 e o modelo do veículo igual a Volks-9000--
	UPDATE veiculo SET carroceria = 'Tanque' WHERE id_motorista = 24 AND modelo = 'Volks-CB9000';

--Questão 5.d - Atualização do preço do licenciamento em 20% para os que vecem em 2016 em diante ou com valor maior que 2000
	UPDATE licenciamento  SET valor = valor + (valor * 0.2) WHERE data_vencimento > '2016-01-01'  OR valor > 2000;

-- Questão 5.e - Atualiza a data prevista para 30 de janeiro de 2016, da cidade 9
	UPDATE
	  encomenda
	SET
	  data_hora_prevista_chegada = '2016-01-30' 
	WHERE
	  id_destinatario IN (
	SELECT p.id FROM
	pessoa  p
	  INNER JOIN endereco  e ON p.id_endereco = e.id
	  INNER JOIN bairro b ON e.id_bairro = b.id
	WHERE
	  b.id_cidade = 9);
  

-- Questão 5. f - Exclusão de todos os lincenciamentos
    DELETE FROM licenciamento;

-- Questão 5.g - Exclusão de dados da tabela veículo. Excluir o veículo de id igual a 1.
    DELETE FROM veiculo WHERE id = 14;
    
--Questão 5.h - Exclusão de dados da tabela tipo. Irá excluir a linha que o tipo de carga é perigosa e o id é 4.
    DELETE FROM tipo WHERE perigosa = 'false' and id = 4;

--Questão 5.i - Exclusão de dados da tabela veiculo. Irá excluir veículos com ano inferior a 2006 ou que possuêm carroceria pedreira
	DELETE FROM veiculo WHERE ano > 2004 or carroceria = 'pedreira';

-- Questão 5.j - exclusão de dados da tabela veiculo excluir da tabela o veículo que está ligado a motorista Bianca Pinto
    DELETE FROM veiculo WHERE id_motorista = (SELECT m.id from motorista m inner join pessoa p on m.id = p.id where p.nome = 'Bruna Pinto');