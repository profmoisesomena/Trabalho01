use cookinc;

#9.9	CONSULTAS COM SELF JOIN E VIEW 
#SELF JOIN NÃO SE APLICA AO NOSSO PROJETO
create view receitas_a_serem_deletadas as
select id_rec,nome from receita 
where votos_negativos > (votos_positivos*1.3);

create view sexo_mais_cadastrado as
select m_f,count(*) as qnt_sexo from sexo
inner join usuario
on(FK_SEXO_id_sexo=id_sexo)
group by FK_SEXO_id_sexo;
