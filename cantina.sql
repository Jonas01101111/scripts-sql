create database if not exists dbcantina;
use dbcantina;


create table if not exists estado (
id int auto_increment,
estado varchar(25),
UF char(2)
);
# EXTRA1


create table if not exists categoria (
id int auto_increment,
descricao varchar(30),
primary key(id)
);
#1
create table if not exists produto(
id int auto_increment,
nome varchar(30),
validade date,
preco double,
sabor varchar(15),
quantidade smallint,
primary key(id),
foreign key(id_categoria) references categoria(id)
);
#2
create table if not exists endereco(
id int auto_increment,
cidade varchar(35),
bairro varchar(50),
id_estado int,
cep varchar(8),
logradouro varchar(60),
foreign key(id_estado) references estado(id),
primary key(id)
);
#3
create table if not exists fornecedor(
id int auto_increment,
nome varchar(40),
email varchar(70),
telefone char(14),
cnpj char(14),
primary key(id)
);
#4
create table if not exists (
id int auto_increment,
,
primary key(id)
);
#5
create table if not exists (
id int auto_increment,
,
primary key(id)
);
#6
create table if not exists (
id int auto_increment,
,
primary key(id)
);
#7
create table if not exists (
id int auto_increment,
,
primary key(id)
);
#8
create table if not exists (
id int auto_increment,
,
primary key(id)
);
#9
create table if not exists (
id int auto_increment,
,
primary key(id)
);
#10
create table if not exists (
id int auto_increment,
,
primary key(id)
);
#11
create table if not exists (
id int auto_increment,
,
primary key(id)
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


