GRUPO: ESTER, EMANUELLE E LETÍCIA
TEMA: LANCHONETE
DATA: 14/07/2022
----------------------------------

CRIANDO TABELA FILIAL:
create table filial(
	cod varchar primary key,
	nome varchar,
	cidade varchar,
	estado varchar
);

CRIANDO TABELA FORNECEDOR:
create table fornecedor(
	cnpj varchar primary key,
	nome varchar,
	email varchar,
	estado varchar
	produto varchar
);

CRIANDO TABELA PRODUTO:
create table produto(
	codigo_produto serial primary key,
	data_compra varchar,
	qtd int,
	marca varchar,
	preco decimal(7,2),
	cod_fornecedor varchar,
	validade varchar,
	descricao varchar,
	foreign key (cod_fornecedor) references fornecedor (cnpj)
);

CRIANDO TABELA ESTOQUE:
create table estoque(
      cod_prod int,
      cod_filial varchar,
     foreign key (cod_prod) references produto(codigo_produto),
     foreign key (cod_filial) references filial (cod)
);

CRIANDO TABELA FUNCIONARIO_LANCHONETE:
create table Funcionarios_lanchonete(
	pis varchar primary key,
	nome varchar,
	salario decimal (7,2),
	cargo varchar,
	carga_horaria int, 
	cod_filial varchar,
	foreign key (cod_filial) references filial (cod)
);

CRIANDO TABELA COMPRA:
create table compra(
	cpf_cliente varchar primary key,
	data_compra varchar,
	total decimal(7,2),
	cod_func varchar,
	foreign key (cod_func) references Funcionarios_lanchonete (pis)
);
