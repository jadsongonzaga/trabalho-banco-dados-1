/*Questão 6. a - Seleção de dados da tabela pessoa
    Seleciona todos os registros da tabela pessoa*/
SELECT * FROM pessoa;

/*Questão 6. b - Seleção de dados da tabela pessoa
	Seleciona os registro de pessoa que atende a condição id_endereco = 3 */
SELECT * FROM pessoa p WHERE p.id_endereco = 3;

/*Questão 6. c - Seleção de dados da tabela pessoa
	Seleciona os registro de pessoa que atende a condição id_endereco = 3 e id = 3 */
SELECT * FROM pessoa p WHERE p.id_endereco = 3 AND p.id = 3;

/*Questão 6. d - Seleção de dados da tabela pessoa
	Seleciona os registro de pessoa que atende a condição id_endereco = 3 e ou id = 6 */
SELECT * FROM pessoa p WHERE p.id_endereco = 3 OR p.id = 6;

/*Questão 6. e - Seleção de dados da tabela pessoa
	Seleciona todas as pessoas que o nome começa com a letra A */
SELECT * FROM pessoa p WHERE p.nome LIKE 'A%';

/*Questão 6. f - Seleção de dados da tabela pessoa
	Seleciona todas as pessoas que o nome não começa com a letra A */
SELECT * FROM pessoa p WHERE p.nome NOT LIKE 'A%';

/*Questão 6. g - Seleção de dados da tabela pessoa
	Seleciona todos os registros que o id_endereco é igual 3 ou 6 */
SELECT * FROM pessoa p WHERE p.id_endereco IN(3,6);

/*Questão 6. h - Seleção de dados da tabela pessoa
	Seleciona todos os registros que tem o id maior que o id_endereco */
SELECT * FROM pessoa p WHERE p.id > p.id_endereco;

/*Questão 6. i - Seleção de dados da tabela pessoa
	Seleciona todos os registros  do id que estão entre as condições 4 e 7 */
SELECT * FROM pessoa p WHERE p.id BETWEEN 4 AND 7;

/*Questão 6. j - Seleção de dados da tabela pessoa
	Seleciona todos os registros  agrupando pelo id_endereco e filtrando o resultado onde id_endereco for maior que 6 */
SELECT COUNT(*)quantidade,id_endereco  FROM pessoa p GROUP BY id_endereco HAVING id_endereco > 6 ;

/*Questão 6. k - Seleção de dados da tabela veiculo
	Seleciona o modelo dos veiculos que possuem o id_motorista maior que ao menos um id da tabela motorista, ou seja maior que o mínimo  */
SELECT modelo FROM veiculo v WHERE v.id_motorista > ANY (SELECT m.id FROM motorista m);

/*Questão 6. l - Seleção de dados da tabela veiculo
	Seleciona o modelo dos veiculos que possuem o id_motorista maior que todos os ids da tabela motorista, ou seja maior que o máximo */
SELECT modelo FROM veiculo v WHERE v.id_motorista <= ALL (SELECT m.id FROM motorista m);


/*Questão 6. m - Seleção de dados da tabela destinatário e pessoa
 Selecionar todos os destinatário que possuem encomendas    */
 
SELECT 
*
FROM
  pessoa pe
  INNER JOIN destinatario de on pe.id = de.id
where
  exists (SELECT distinct  * FROM encomenda e WHERE e.id_destinatario = de.id)
  
/*Questão 6. n - Seleção de dados da a partir de subconsultas Traz a pessoa e reitoria     */ 
SELECT
*
FROM
   (SELECT id, nome, id_endereco FROM pessoa) pe
   INNER JOIN (SELECT id, id_bairro, nome FROM endereco) en ON pe.id_endereco = en.id_bairro
   INNER JOIN (SELECT id, nome FROM bairro) b ON en.id_bairro = b.id
   
/*
Questão 6. o - Obter os estados associados às cidade, sem repetir os estados, e ordenar pelo nome do estado*/

SELECT
c.id_estado,
e.nome
FROM
   cidade c
   INNER JOIN estado e ON c.id_estado = e.id
GROUP BY
  c.id_estado, e.nome
ORDER BY
  e.nome
  
/*
Questão 6. p - obter os endereços das pessoas cadastrada
*/
SELECT
*
FROM
  pessoa p JOIN endereco e ON p.id_endereco = e.id
  
/*
Questão 6. q - Obter os estados e as cidades cadastradas, trazendo todos os estados independente de possuir cidade cadastrada
*/

SELECT
*
FROM
  estado e
  LEFT JOIN cidade c ON e.id = c.id_estado

/*
Questão 6. - r Tabelas:encomenda e tipo
Obter os tipos de encomendas e as encomendas , trazendo todos os tipos independente de possuir encomenda
*/

select
*
from
  encomenda e
  right join tipo t on e.id_tipo = t.id


/*
Questão 6. s - Tabelas: pessoa, motorista, veiculo com condição IN em rota_entrega
Obter informações dos motoristas e veiculos que possuem rota de entrega
*/

SELECT 
  pe.id,
  pe.nome,
  mo.carteira_trabalho,
  mo.cpf,
  mo.sexo,
  ve.id,
  ve.modelo,
  ve.tamanho,
  ve.ano,
  ve.chassi
FROM
  pessoa pe
  INNER JOIN motorista mo ON pe.id = mo.id
  INNER JOIN veiculo ve ON ve.id_motorista = mo.id
WHERE
  ve.id in (SELECT id_veiculo FROM rota_entrega)

  
  /*
Questão 6. t -  Tabela pessoa, endereco
	Seleciona o endereço das pessoas cadastradas
*/
SELECT 
  t.nome_pessoa, 
  t.nome_estado    
FROM (SELECT 
	     p.nome as nome_pessoa, 
	     e.nome as nome_estado
	  FROM 
		pessoa p 
		INNER JOIN endereco e ON p.id_endereco = e.id) t
/*
Questão 6. u - Tabela pessoa, endereco, bairro
Seleciona a quantidade de pessoas que mora em cada bairro cadastrado
*/
SELECT 
    COUNT(p.id) AS quantidade,
	b.nome
FROM pessoa p
	INNER JOIN endereco e ON p.id_endereco = e.id
	INNER JOIN bairro b ON e.id_bairro = b.id 
GROUP BY 
	b.nome
/*
Questão 6. v - Tabela: destinatario e motorista.
  Obter o id e os CPF de todos os destinatários e motoristas.
*/
SELECT 
  id, cpf
FROM
  destinatario
UNION
SELECT 
  id, cpf
FROM
  motorista
