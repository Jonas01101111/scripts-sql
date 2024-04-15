select * from alunos;

# select campos from tabela where filtro;

 select nome as aluno, endereco
 from alunos where nome like "coronel%" ;
 
 select nome, bairro from alunos where complemento like "casa";
 
 select nome Aluno, endereco Endereço, numero Número, rg Documento from alunos where ENDERECO like "%avenida%";
 
select nome Aluno, DATA_NASCIMENTO Data from alunos where DATA_NASCIMENTO  between "1969-01-01" and "1981-12-31" order by DATA_NASCIMENTO asc;