create database if not exists dbcantina;
use dbcantina;


CREATE TABLE IF NOT EXISTS estado (
    id INT AUTO_INCREMENT,
    estado VARCHAR(25),
    UF CHAR(2)
);
CREATE TABLE IF NOT EXISTS categoria (
    id INT AUTO_INCREMENT,
    descricao VARCHAR(30),
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS produto (
    id INT AUTO_INCREMENT,
    nome VARCHAR(30),
    validade DATE,
    preco DOUBLE,
    sabor VARCHAR(15),
    quantidade SMALLINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria)
        REFERENCES categoria (id)
);
CREATE TABLE IF NOT EXISTS endereco (
    id INT AUTO_INCREMENT,
    cidade VARCHAR(35),
    bairro VARCHAR(50),
    id_estado INT,
    cep VARCHAR(8),
    logradouro VARCHAR(60),
    FOREIGN KEY (id_estado)
        REFERENCES estado (id),
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS fornecedor (
    id INT AUTO_INCREMENT,
    nome VARCHAR(40),
    email VARCHAR(70),
    telefone CHAR(14),
    cnpj CHAR(14),
    PRIMARY KEY (id)
);
#4
create table if not exists prod_fornecedor_assoc(
id_produto int ,
id_fornecedor int,
primary key(id_produto, id_fornecedor),
foreign key (id_fornecedor) references fornecedor(id),
foreign key (id_produto) references produto(id)
);
#5
create table if not exists despesa(
id int auto_increment,
descricao varchar(60),
datavencimento date,
valor double,
primary key(id)
);
#6
create table if not exists pagamento(
id int auto_increment,
valor double,
datapagamento date,
id_despesa int,
id_fornecedor int,
primary key(id),
foreign key (id_despesa) references despesa(id),
foreign key(id_fornecedor) references fornecedor(id)
);
#7
create table if not exists cargo(
id int auto_increment,
tipo varchar(20),
descricao varchar(40),
primary key(id)
);
#8
create table if not exists funcionario(
id int auto_increment,
nome varchar(70),
telefone varchar(14),
id_endereco int,
id_cargo int,
genero varchar(2),
primary key(id),
foreign key (id_endereco) references endereco(id),
foreign key (id_cargo) references cargo(id)
);
#9
create table if not exists cliente(
id int auto_increment,
nome varchar(40),
rg varchar(9),
genero varchar(2),
datanasc date,
cpf varchar(11),
id_funcionario int,
id_endereco int,
primary key(id),
foreign key (id_funcionario) references funcionario(id),
foreign key (id_endereco) references endereco(id)
);
#10
create table if not exists venda(
id int auto_increment,
datavenda date,
id_cliente int,
id_funcionario int,
primary key(id),
foreign key (id_cliente) references cliente(id),
foreign key (id_funcionario) references funcionario(id)
);
#11
create table if not exists recebimento(
id int auto_increment,
datarecebimento date,
formapagamento varchar(15),
valor int,
id_venda int,
primary key(id),
foreign key (id_venda) references venda(id)
);
#12
create table if not exists (
id int auto_increment,
,
primary key(id)
);

#13
create table if not exists (
id int auto_increment,
,
primary key(id)
);


