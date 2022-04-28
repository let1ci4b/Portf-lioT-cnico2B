# Autora: Letícia Beatriz Souza
# Descrição: Criando um Database para uma loja de roupas.
# Tabelas: PRODUTOS, VENDA, CLIENTE, FUNCIONARIOS E FORNECEDORES


create table fornecedores(
	cnpj varchar (18) primary key,
	nomeFantasia varchar,
	tipoRoupa varchar,
	local varchar
);

insert into fornecedores
(cnpj, nomeFantasia, tipoRoupa, local)
values
('22.333.333/0001-22', 'Joãozinho importações', 'jeans', 'São Paulo'),
('11.222.343/0001-12', 'Lila importações', 'vestidos', 'São Paulo');

select * from fornecedores

---------------------------------------------------------------

create table funcionarios(
	idCarteiraTrabalho varchar(14) primary key,
	nome varchar,
	cpf varchar,
	salario decimal (7,2),
	cargaHoraria int,
	cargo varchar
);

insert into funcionarios
(idCarteiraTrabalho, nome, cpf, salario, cargaHoraria, cargo)
values
('333.55555.22-1', 'Sheldon', '125.178.169-17', 1000.00, 5, 'estagiario'),
('55.55555.22-8', 'Jessica', '136.127.391-33', 2000.00, 8, 'estoquista');

select * from funcionarios

---------------------------------------------------------------

create table cliente(
	cpf varchar(14) primary key,
	nome varchar,
	telefone varchar,
	email varchar,
	endereço varchar
);

insert into cliente
(cpf, nome, telefone, email, endereço)
values
('127-189-762-45', 'Mariana Soares', '(47)99948-2673', 'marisoares@gmail.com', 'Rua das cerejeiras'),
('358-473-336-72', 'Alexandre Vieira', '(48)98673-3392', 'alexandrev72@gmail.com', 'Avenida das Macieiras');

select * from cliente

---------------------------------------------------------------

create table produto(
	codigoProduto bigint primary key,
	tecido varchar,
	tamanho varchar,
	modelo varchar,
	estilo varchar,
	marca varchar,
	preço decimal(5,2),
	codigoFornecedor varchar(18),
	foreign key (codigoFornecedor) references fornecedores(cnpj)
);

insert into produto
(codigoProduto, tecido, tamanho, modelo, estilo, marca, preço, codigoFornecedor)
values
(129463, 'jeans', 'M', 'short', 'casual', 'calvin klein', 252.90, '22.333.333/0001-22'),
(855947, 'algodão', 'G', 'vestido', 'gala', 'Lança Perfume', 353.50, '11.222.343/0001-12');

select * from produto

---------------------------------------------------------------

create table venda(
	data date,
	codigoProduto bigint,
	codigoFuncionario varchar(14),
	codigoCliente varchar,
	foreign key (codigoProduto) references produto(codigoProduto),
	foreign key (codigoFuncionario) references funcionarios(idCarteiraTrabalho),
	foreign key (codigoCliente) references cliente(CPF)
);

insert into venda
(data, codigoProduto, codigoFuncionario, codigoCliente)
values
('2021-12-03', 129463, '333.55555.22-1', '127-189-762-45'),
('2021-12-18', 855947, '55.55555.22-8', '127-189-762-45'),
('2022-01-24', 855947, '333.55555.22-1', '358-473-336-72');

select * from venda

---------------------------------------------------------------
