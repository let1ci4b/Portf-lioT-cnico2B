# Autora: Letícia Beatriz Souza
# Descrição: Criando um Database para um zoológico e importando algumas informações pelo SQL Shell.
# Tabelas: ANIMAIS, FUNCIONÁRIOS, FORNECEDOR, ESTOQUE, CUIDA, ALIMENTA, VISITANTES, BILHETERIA, EMPRESAS PARCEIRAS E CONTAS


create table animais(
	codigoAnimal int primary key, 
	nome varchar,
	nascimento int,
	especie varchar,
	setor varchar,
	peso decimal,
	visitaVeterinario date,
	observacoes varchar
);

insert into animais
(codigoAnimal, nome, nascimento, especie, setor, peso, visitaVeterinario, observacoes)
values
(123, 'sergio', 2005, 'macaco', 3, 21.9, '2021-10-18', 'precisa passar pomada no rabo duas vezes ao dia\ rouba comida dos visitantes'),
(456, 'bob', 2019, 'hipopotamo', 1, 352.3, '2022-01-05', 'gosta de jogar agua nos visitantes'),
(789, 'rubens', 2010, 'pinguin', 5, 18.6, '2019-12-02', 'esta chocando um ovo'),
(101, 'chiquinho', 2002, 'porco', 2, 69.80, '2019-12-03', 'cuidar da ferida nas costas');

----------------------------------------------------------------------------------------------------------------------

create table funcionarios(
	PIS varchar primary key,
	nome varchar,
	dataNascimento date,
	CPF varchar,
	cargo varchar,
	cargaHoraria int,                                                       
	salario decimal,
	email varchar
);

----------------------------------------------------------------------------------------------------------------------

*SQL SHELL* ->
zoologico=# \copy funcionarios from 'C:\Users\leticia_b_souza\Downloads\tabelafuncionarioszoo.csv' delimiter ',' csv header;

----------------------------------------------------------------------------------------------------------------------

create table fornecedor(
	CNPJ varchar primary key,
	produto varchar,
	email varchar,
	local varchar
);

insert into fornecedor
(CNPJ, produto, email, local)
values
('33.5555.215/0203-11', 'raçao para porcos', 'lojaderacoes@gmail.com', 'sao paulo'),
('21.4431.874/1807-66', 'feno', 'fazendaseujorge@gmail.com', 'acre'),
('95.7842.531/7921-09', 'sementes de grama', 'seugramado@gmail.com', 'santa catarina');

----------------------------------------------------------------------------------------------------------------------

create table estoque(
	codigoProduto int primary key,
	dataCompra date
	produto varchar,
	preco decimal,
	quantidade varchar,
	marca varchar,
	validade date,
	codigoFornecedor varchar references fornecedor(CNPJ)
);

insert into estoque
(codigoProduto, dataCompra, produto, preco, quantidade, marca, validade, codigoFornecedor)
values
(88762, '2022-04-19', 'feno', 2550.0, '800u', 'fazendinha seu jorge', '2024-03-02', '21.4431.874/1807-66'),
(47635, '2021-12-24', 'racao para porcos', 4500.50, '750kg', 'rasse', '2023-12-02', '33.5555.215/0203-11'),
(56827, '2020-10-07', 'sementes de grama', 5779.99, '30kg', 'esmerald', '2021-05-13', '95.7842.531/7921-09');

----------------------------------------------------------------------------------------------------------------------

create table cuida(
	codigoFuncionario varchar,
	codigoAnimal int,
	foreign key codigoFuncionario references funcionarios(PIS),
	foreign key codigoAnimal references animais(codigoAnimal) 
);

insert into cuida
(codigoFuncionario, codigoAnimal)
values
('33.44444.77-8', 123),
('33.44444.77-8', 789),
('23.55515.22-1', 456),
('23.55515.22-1', 101);

----------------------------------------------------------------------------------------------------------------------

create table alimenta(
	codigoAnimal int,
	codigoEstoque int,
	foreign key codigoAnimal references animais(codigoAnimal),
	foreign key codigoEstoque references estoque(codigoProduto) 
);

insert into alimenta
(codigoAnimal, codigoEstoque)
values
(101, 47635);

----------------------------------------------------------------------------------------------------------------------

create table visitantes(
	CPF varchar primary key,
	nome varchar,
	idade int,
	checkin date
);

----------------------------------------------------------------------------------------------------------------------

*SQL SHELL* ->											
zoologico=# \copy visitantes from 'C:\Users\leticia_b_souza\Downloads\tabelavisitantes.csv' delimiter ',' csv header;

----------------------------------------------------------------------------------------------------------------------

create table bilheteria(
	idPulseira int primary key,
	noZoo boolean,
	codigoVisitante varchar references visitantes(CPF)
);

insert into bilheteria
(idPulseira, noZoo, codigoVisitante)
values
(239485, false, 125.173.887-22),
(239486, true, 168.339.990-11),
(239487, true, 091.227.433-98);

----------------------------------------------------------------------------------------------------------------------

create table empresasParceiras(
	CNPJ varchar primary key,
	nomeEmpresa varchar,
	aluguel decimal,
	email varchar,
	funcao varchar
);
										
----------------------------------------------------------------------------------------------------------------------

*SQL SHELL* ->											
zoologico=# \copy empresasParceiras from 'C:\Users\leticia_b_souza\Downloads\tabelaempresasparceiras.csv' delimiter ',' csv header;

----------------------------------------------------------------------------------------------------------------------

create table contas(
	codigo int primary key,
	mesAno varchar,
	totalEstoque decimal,
	totalFuncionarios decimal,
	totalBilheteria decimal,
	gastosExtras decimal,
	lucro decimal,
);

insert into contas
(codigo, mesAno, totalEstoque, totalFuncionarios, totalBilheteria, gastosExtras, lucro)
values
(123468, 'janeiro 2020', 394369.30, 100950.00, 1144320.00, 12230.30),
(123469, 'fevereiro 2020', 264781.90, 101950.00, 1001210.00, 9480.20);

UPDATE contas SET lucro = (totalBilheteria - (totalEstoque + gastosExtras + totalFuncionarios))

----------------------------------------------------------------------------------------------------------------------
