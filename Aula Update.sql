select * from alunos ;
select * from cidades;
update alunos set data_nascimento = "2013-01-31", id_cidade = 1 where id=1;

#1 
update alunos set id_cidade=6 where nome like "%Coriolano%";
#2
update alunos set bairro = "Vila Ana Maria" where pai like "%Ribeirinho%";
#3
update alunos set Numero = 530 where nome like "%Zarolha%";
#4
update alunos set mae = "Miquelina das Onças" where nome like "Manoel das Onças";
#5
update alunos set cpf = "255.754.445-79" where nome like "Maria Machadão";
#6 
update alunos set pai = "Juvenal das Couves" where nome like "Doroteia";
#7
update alunos set numero = 1550, bairro = "Centro", endereco = "Rua Major Ascânio" where nome like "Nacib Saad";
