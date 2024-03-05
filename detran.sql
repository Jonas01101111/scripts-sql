 create database if not exists db_detran;
 use db_detran;

create table if not exists Marca(
id int auto_increment,
nome varchar(50),
primary key(id)
);

create table if not exists Cor(
id int auto_increment,
nome varchar(50),
primary key(id)
);
 
 create table if not exists Agente(
id int auto_increment,
matricula char(5),
nome varchar(50),
contratacao varchar(50),
primary key(id)
);

create table if not exists Infracao(
id int auto_increment,
descricao varchar(50),
valor double,
pontos varchar(20),
primary key(id)
);

create table if not exists Sexo(
id int auto_increment,
inicial char(1),
nome varchar(10),
primary key(id)
);

create table if not exists Estado(
id int auto_increment,
sigla char(2),
nome varchar(50),
primary key(id)
);

create table if not exists Cidade(
id int auto_increment,
nome varchar(50),
id_estado int,
primary key(id),
foreign key(id_estado) references Estado(id)
);

create table if not exists Endereco(
id int auto_increment,
logradouro varchar(60),
numero varchar(10),
bairro varchar(50),
cep char(8),
complemento varchar(50),
primary key(id)
);

create table if not exists Proprietario(
id int auto_increment,
nome varchar(50),
cpf char(11),
id_cidade int,
id_sexo int,
primary key(id),
foreign key(id_cidade) references Cidade(id),
foreign key(id_sexo) references Sexo(id)
);

create table if not exists Modelo(
id int auto_increment,
nome varchar(50),
id_marca int,
primary key(id),
foreign key(id_marca) references Marca(id)
);

create table if not exists Veiculo(
id int auto_increment,
placa char(7),
cadastro varchar(50),
id_cor int,
id_proprietario int,
id_modelo int,
primary key(id),
foreign key(id_cor) references Cor(id),
foreign key(id_proprietario) references Proprietario(id),
foreign key(id_modelo) references Modelo(id)
);

create table if not exists Multa(
id int auto_increment,
lancamento varchar(50),
id_veiculo int,
id_agente int,
id_cidade int,
id_infracao int,
data_ date,
hora time,
localidade varchar(150),
primary key (id),
foreign key (id_veiculo) references Veiculo(id),
foreign key (id_agente) references Agente(id),
foreign key (id_cidade) references Cidade(id),
foreign key (id_infracao) references Infracao(id)
);



