# Autora: Letícia Beatriz Souza
# Descrição: Criando uma tabela mercado e uma função 'aumento' onde
- valores acima de 100 tem um aumento de 20%
- entre 50 e 100 aumento de 10%
- abaixo de 50 aumento de 5%

create table mercado(
	id int primary key,
	descricao varchar,
	preco numeric,
	categoria varchar
);

insert into mercado
(id, descricao, preco, categoria)
values
(123, 'banana maça', 12.59, 'frutas'),
(124, 'iogurte', 5.90, 'laticinios'),
(125, 'chocolate milka', 31.70, 'doces'),
(126, 'tomate', 2.34, 'frutas'),
(127, 'alface', 3.40, 'legumes e verduras');

---------------------------------------------------------------

*FUNCAO AUMENTO*

create function aumento(preco decimal(7,2)) returns decimal(7,2) as $$
	declare
		novoValor decimal(7,2);
	begin 
		IF preco > 100 then novoValor = preco * 1.2;
		ELSIF preco < 50 then novoValor = preco * 1.05;
		ELSE novoValor = preco * 1.1;
		END IF;
		return novoValor;
	end;
$$ language PLPGSQL;

---------------------------------------------------------------

*ATULIZANDO VALORES NA TABELA UTILIZANDO A FUNÇÃO AUMENTO*

UPDATE mercado SET preco = aumento(preco)

---------------------------------------------------------------
