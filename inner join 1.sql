select * from alunos;
select * from cpfs;
select * from cidades;

select nome , cpfs.Numero from alunos a inner join cpfs on a.cpf = cpfs.id;

select alunos.nome , cidades.nome as cidades
from alunos inner join cidades on alunos.id_cidade = cidades.id; 