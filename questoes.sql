create  database if not exists questoes;


create table if not exists perguntases(
id int auto_increment,
enunciado varchar(255),
primary key (id)
);

create table if not exists alternativases (
id int auto_increment,
id_pergunta int,
descricao varchar(255),
correta bool,
primary key (id),
foreign key(id_pergunta)
references perguntases (id)
);