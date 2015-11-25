/*
Inserção dos estados
*/
INSERT INTO estado (nome, uf) VALUES ('Acre', 'AC');
INSERT INTO estado (nome, uf) VALUES ('Alagoas', 'AL');
INSERT INTO estado (nome, uf) VALUES ('Amazonas', 'AM');
INSERT INTO estado (nome, uf) VALUES ('Amapá', 'AP');
INSERT INTO estado (nome, uf) VALUES ('Bahia', 'BA');
INSERT INTO estado (nome, uf) VALUES ('Ceará', 'CE');
INSERT INTO estado (nome, uf) VALUES ('Distrito Federal', 'DF');
INSERT INTO estado (nome, uf) VALUES ('Espírito Santo', 'ES');
INSERT INTO estado (nome, uf) VALUES ('Goiás', 'GO');
INSERT INTO estado (nome, uf) VALUES ('Maranhão', 'MA');
INSERT INTO estado (nome, uf) VALUES ('Minas Gerais', 'MG');
INSERT INTO estado (nome, uf) VALUES ('Mato Grosso do Sul', 'MS');
INSERT INTO estado (nome, uf) VALUES ('Mato Grosso', 'MT');
INSERT INTO estado (nome, uf) VALUES ('Pará', 'PA');
INSERT INTO estado (nome, uf) VALUES ('Paraíba', 'PB');
INSERT INTO estado (nome, uf) VALUES ('Pernambuco', 'PE');
INSERT INTO estado (nome, uf) VALUES ('Piauí', 'PI');
INSERT INTO estado (nome, uf) VALUES ('Paraná', 'PR');
INSERT INTO estado (nome, uf) VALUES ('Rio de Janeiro', 'RJ');
INSERT INTO estado (nome, uf) VALUES ('Rio Grande do Norte', 'RN');
INSERT INTO estado (nome, uf) VALUES ('Rondônia', 'RO');
INSERT INTO estado (nome, uf) VALUES ('Roraima', 'RR');
INSERT INTO estado (nome, uf) VALUES ('Rio Grande do Sul', 'RS');
INSERT INTO estado (nome, uf) VALUES ('Santa Catarina', 'SC');
INSERT INTO estado (nome, uf) VALUES ('Sergipe', 'SE');
INSERT INTO estado (nome, uf) VALUES ('São Paulo', 'SP');
INSERT INTO estado (nome, uf) VALUES ('Tocantins', 'TO');
 
/* Insert de cidade */
 
INSERT INTO cidade(id_estado, nome) VALUES (5,  ' Feira de Santana');
INSERT INTO cidade(id_estado, nome) VALUES (5,  ' Salvador');
INSERT INTO cidade(id_estado, nome) VALUES (1,  'Rio Branco');
INSERT INTO cidade(id_estado, nome) VALUES (7,  ' Brasília');
INSERT INTO cidade(id_estado, nome) VALUES (9,  'Goiania');
INSERT INTO cidade(id_estado, nome) VALUES (11, ' Belo Horizonte');
INSERT INTO cidade(id_estado, nome) VALUES (16, ' Recife');
INSERT INTO cidade(id_estado, nome) VALUES (5,  ' São Gonçalo dos Campos');
INSERT INTO cidade(id_estado, nome) VALUES (16, 'Petrolina');
INSERT INTO cidade(id_estado, nome) VALUES (5,  'Juazeiro');
INSERT INTO cidade(id_estado, nome) VALUES (26, 'São Paulo');
INSERT INTO cidade(id_estado, nome) VALUES (18, 'Curitiba');
INSERT INTO cidade(id_estado, nome) VALUES (27, 'Palmas');
INSERT INTO cidade(id_estado, nome) VALUES (23, 'Porto Alegre');
INSERT INTO cidade(id_estado, nome) VALUES (19, 'Rio de Janeiro');


/*
Insert de bairro
*/

INSERT INTO bairro(id_cidade, nome) VALUES (1, 'Tomba');
INSERT INTO bairro(id_cidade, nome) VALUES (1, 'Feira X');
INSERT INTO bairro(id_cidade, nome) VALUES (1, 'Centro');
INSERT INTO bairro(id_cidade, nome) VALUES (2, 'Barra');
INSERT INTO bairro(id_cidade, nome) VALUES (2, 'Cajazeiras');
INSERT INTO bairro(id_cidade, nome) VALUES (10, 'Getulio Vargas');
INSERT INTO bairro(id_cidade, nome) VALUES (6, 'Centro');
INSERT INTO bairro(id_cidade, nome) VALUES (9, 'Iguatemi');
INSERT INTO bairro(id_cidade, nome) VALUES (13, 'Araçás');
INSERT INTO bairro(id_cidade, nome) VALUES (15, 'Lapa');
INSERT INTO bairro(id_cidade, nome) VALUES (15, 'Rocinha');


/*
Inserção de tipo de encomenta
*/

INSERT INTO tipo (descricao, perigosa) VALUES ('Produtos químicos', true);
INSERT INTO tipo (descricao, perigosa) VALUES ('Produtos radioativo', true);
INSERT INTO tipo (descricao, perigosa) VALUES ('Combustível', true);
INSERT INTO tipo (descricao, perigosa) VALUES ('Confecções', false);
INSERT INTO tipo (descricao, perigosa) VALUES ('Eletrodoméstico', false);
INSERT INTO tipo (descricao, perigosa) VALUES ('Eletroeletônico', false);
INSERT INTO tipo (descricao, perigosa) VALUES ('Produtos de informatica', false);
INSERT INTO tipo (descricao, perigosa) VALUES ('Vidro', false);
INSERT INTO tipo (descricao, perigosa) VALUES ('Móveis', false);
INSERT INTO tipo (descricao, perigosa) VALUES ('Comético', false);
INSERT INTO tipo (descricao, perigosa) VALUES ('Medicamento', false);


/*
Inserção de endereco
*/


INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (1, 'rua', 'da paz', '44230123', 354);
       
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (5, 'avenida', '7 de setembro', '55123000', 1089);
       
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (8, 'alameda', 'das flores', '49230173', 29);
       
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (8, 'travessa', '5 de maio', '21055987', 354);
       
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (10, 'praça', 'Dom Pedro', '21067000', 202);
       
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (2, 'rua', 'L', '44230168', 88);
       
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (2, 'rua', 'M', '44230169', 09);
       
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (10, 'avenida', 'Brasil', '21055771', 2934);
       
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (9, 'praça', 'Bandeira', '12654098', 54);
       
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (6, 'rua', 'Marechal Rondon', '22567000', 330); 
               
INSERT INTO endereco(id_bairro, nome, rua, cep, numero)
        VALUES (2, 'rua', 'Bugguinho DBA ', '44230765', 440);


/*
Inserção de pessoa
*/



INSERT INTO pessoa (id_endereco, nome, telefone)
     VALUES (1, 'Davi de Jesus', '075999999999');

INSERT INTO pessoa (id_endereco, nome, telefone) 
	VALUES (2, 'João Pedro da Silva', '075888888888');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (3, 'Bernardo Silva', '075777777777');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (4, 'Lucas Pereira', '075777771111');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (5, 'Julia Mota', '075777321911');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (6, 'Julia Mota', '075777321911');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (7, 'Isabella Souza', '075888321911');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (8, 'Matheus Souza', '075888390977');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (9, 'Rafael Silva', '075981077777');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (10, 'Felipe Oliveira', '075981077777');


INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (4, 'Motorola', '071777771111');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (5, 'Samsung', '021797321911');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (1, 'Dell', '011999999999');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (2, 'Ponto frio', '085988888888');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (3, 'Americanas', '022777777777');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (6, 'Casas Bahia', '075777321911');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (7, 'Netshoes', '075888321911');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (8, 'Neo Quimia', '075888390977');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (9, 'Shell', '075981077777');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (10, 'Angra 1', '07398198777');



INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (8, 'João Victor Souza', '077888390977');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (9, 'Luiz Paulo Silva', '075981077777');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (10, 'Carlos Araujo', '084981981234');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (4, 'Arthur Pereira', '071332771111');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (5, 'Julia Santana', '021797321911');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (1, 'Ricardo Almeida', '011999999999');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (2, 'Leandro da Silva', '085988888888');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (3, 'Bryan Silva', '022777777777');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (6, 'Emanuelly Mota', '075777321911');

INSERT INTO pessoa (id_endereco, nome, telefone)
 	VALUES (7, 'Bianca Pinto', '075888321911');

/*
Inserção de Destinatário Especialização de Pessoa
*/

INSERT INTO destinatario VALUES (1 , '17731786456');
INSERT INTO destinatario VALUES (2 , '17731786454');
INSERT INTO destinatario VALUES (3 , '17731786452');
INSERT INTO destinatario VALUES (4 , '17731786450');
INSERT INTO destinatario VALUES (5 , '17731786448');
INSERT INTO destinatario VALUES (6 , '17731786446');
INSERT INTO destinatario VALUES (7 , '17731786444');
INSERT INTO destinatario VALUES (8 , '17731786442');
INSERT INTO destinatario VALUES (9 , '17731786440');
INSERT INTO destinatario VALUES (10, '17731786438');

/*
Inserção de Cliente Especialização de Pessoa
*/

INSERT INTO cliente VALUES (11, 'Motorola Eletrônicos LTDA', '74972726000122');
INSERT INTO cliente VALUES (12, 'Samsung LTDA','74048991000119');
INSERT INTO cliente VALUES (13, 'Dell Informática','71325102000125');
INSERT INTO cliente VALUES (14, 'Ponto frio LTDA','41754036000148');
INSERT INTO cliente VALUES (15, 'Americanas LTDA','65634513000108');
INSERT INTO cliente VALUES (16, 'Casas Bahia LTDA','96387873000178');
INSERT INTO cliente VALUES (17, 'Netshoes LTDA','55071974000158');
INSERT INTO cliente VALUES (18, 'Neo Quimia medicamentos','12443782000112');
INSERT INTO cliente VALUES (19, 'Shell distribuição de combustívies LTDA','88219204000169');
INSERT INTO cliente VALUES (20, 'Angra 1 pesquisas','34012750000103');

/*
Inserção de Motorista Especialização de Pessoa
*/

INSERT INTO motorista VALUES (21, '2749772600012', '44341426826', 'D', 'F');
INSERT INTO motorista VALUES (22, '8740499100011', '53185378202', 'E', 'M');
INSERT INTO motorista VALUES (23, '5713210200012', '58817216836', 'D', 'M');
INSERT INTO motorista VALUES (24, '4417503600014', '33242583752', 'E', 'M');
INSERT INTO motorista VALUES (25, '4656351300010', '97897405818', 'E', 'F');
INSERT INTO motorista VALUES (26, '7963887300017', '77805931429', 'E', 'M');
INSERT INTO motorista VALUES (27, '1550797400015', '68337825634', 'D', 'M');
INSERT INTO motorista VALUES (28, '3124478200011', '33874478254', 'D', 'M');
INSERT INTO motorista VALUES (29, '9882120400016', '88045674067', 'E', 'F');
INSERT INTO motorista VALUES (30, '2340175000010', '81550896148', 'D', 'F');

/*
Inserção dos veículos
*/

INSERT INTO veiculo (
        id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho)
        VALUES (21, '9BWHE21JX25060960', '2009', 2, 'Graneleira', 1, 'Constellation', 'HQT-1289', 18.5);

INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho)
        VALUES (22, '8JKHE21DX25060999', '2008', 1, 'bau', 1, 'Constellation 2', 'JGI-0012', 15.0);

INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho)
        VALUES (23, '7NWSP21JX25061000', '2007', 4, 'Carroceria', 1, 'Accelo MB915', 'IBT-9913', 5.3);

INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho)
        VALUES (24, '4GLHE21JX25060444', '2012', 4, 'Combustiveis', 2, 'Volks-CB9000', 'LJK-5640', 15.9);        
                       
INSERT INTO veiculo (
        id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho)
        VALUES (25, '3HNHE21JX25068833', '2013', 4, 'carreta', 2, 'VW230', 'OQK-5500', 20.4);                     

INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho)
        VALUES (26, '1UTYP21GH25061897', '2011', 2, 'bau', 4, 'fORD 816', 'FOR-8765', 12.4);
       
INSERT INTO veiculo (
        id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho)
        VALUES (27, '5KYHE21JX25045623', '2011', 4, 'bau', 1, 'Worker 2', 'GVS-4573', 12.0);
       
INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho)
        VALUES (28, '9DRFP21BN250615649', '2010', 2, 'Carroceria', 2, 'Accelo MB800', 'YKD-7658', 9.0);
       
INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria,cavalo_mecanico, modelo, placa, tamanho)
        VALUES (29, '2KLHE21BG25085760', '2015', 2, 'Container', 2, 'CT-1063', 'KLM-2424', 16.3);
       
INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho)
        VALUES (30, '8GTHE21CC25061010', '2011', 4, 'Bau', 1, 'Vertis', 'GWT-1522', 7.5);
       
INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho) 
		VALUES (25, '9DRFP21BN2506145TY', '20051103', 2, 'cacamba', 2, 'Hao 123', 'YKD-7954', 12.0);

INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria, cavalo_mecanico, modelo, placa, tamanho) 
		VALUES (29, '68RFP21BN2506145HG', '20041029', 4, 'pedreira', 2, '', 'PGD-7987', 13.0);

INSERT INTO veiculo (id_motorista, chassi, ano, quantidade_eixo, carroceria,cavalo_mecanico, modelo, placa, tamanho) 
		VALUES (22, '9KTFP21YP2506145UH', '20000801', 1, 'Carroceria', 2, 'BI-TREN', 'KCD-7988', 8.0);
/*
   insert licenciamento
*/
 
INSERT INTO licenciamento VALUES (542372190, 10, '2015-12-31', 2300.00,'2016-12-31'); 
INSERT INTO licenciamento VALUES (650934234, 5, '2014-10-20', 2300.00,'20151120'); 
INSERT INTO licenciamento VALUES (340934995, 1, '2015-08-29', 1839.45,'2016-08-29');       
INSERT INTO licenciamento VALUES (895934678, 2, '2014-06-12', 2300.00,'2015-06-12');       
INSERT INTO licenciamento VALUES (674934612, 4, '2015-02-11', 2987.00,'2016-02-11');
INSERT INTO licenciamento VALUES (658954243, 3, '2015-09-05', 1750.00,'2016-09-05');
INSERT INTO licenciamento VALUES (619934000, 6, '2015-03-09', 2200.00,'2016-03-09');
INSERT INTO licenciamento VALUES (900934234, 7, '2014-12-18', 3000.00,'2015-12-18');
INSERT INTO licenciamento VALUES (442934600, 8, '2015-11-02', 1950.00,'2016-11-02');
INSERT INTO licenciamento VALUES (491955776, 9, '2015-06-06', 2150.00,'2016-06-06');
 
--insert licenca
 
INSERT INTO licenca VALUES (12123, 10, 'Materiais sólidos'); 
INSERT INTO licenca VALUES (9823, 1, 'grãos'); 
INSERT INTO licenca VALUES (44561, 5, 'móveis e eletros'); 
INSERT INTO licenca VALUES (8763, 9, 'perecíveis congelados'); 
INSERT INTO licenca VALUES (4563, 4, 'eletronicos'); 
INSERT INTO licenca VALUES (45632, 6, 'combustiveis'); 
INSERT INTO licenca VALUES (7764, 7, 'moveis e eletros'); 
INSERT INTO licenca VALUES (6932, 8, 'materiais de construção'); 
INSERT INTO licenca VALUES (74621, 2, 'grãos'); 
INSERT INTO licenca VALUES (39841, 3, 'caixas');


--insert rota
 
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(1,'2015-11-11');
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(2,'2015-08-12');
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(3,'2015-02-25');
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(4,'2015-10-13');
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(5,'2015-03-18');
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(6,'2015-09-08');
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(7,'2015-11-15');
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(8,'2015-12-10');
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(9,'2015-12-22');
INSERT INTO rota_entrega(id_veiculo, data_saida) VALUES(10,'2016-01-02');


/*
insert de encomenda
*/
 
INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (5, 1, 5,15, 'true', '2015-11-30','computadores e impressoras', 5000);
 
 INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (3, 9, 2,19, 'false', '2016-01-02','gasolina aditivada', 10000);
 
  INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (9, 2, 5,14, 'true', '2015-10-10','sofás', 8000);
 
  INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (10, 4, 7,15, 'true', '2015-11-01','perfumaria', 7800);
 
  INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (11, 5, 3,18, 'false', '2015-12-15','xarope', 2320);
 
  INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (11, 8, 3,18, 'true', '2015-10-04','gasolina aditivada', 10000);
 
  INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (7, 4, 9,13, 'false', '2015-11-15','computadores', 5700);
 
  INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (3, 10, 8,19, 'false', '2016-01-02','óleo diesel', 15000);
 
  INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (8, 3, 3,16, 'true', '2015-02-25','vidro de mesa', 9000);
 
  INSERT INTO encomenda(id_tipo, id_rota, id_destinatario,id_cliente, entrege, data_hora_prevista_chegada, descricao, peso)
 VALUES (7, 10, 1,11, 'false', '2015-12-31','baterias de smartphone', 12000);