use cookinc;

#9.10	SUBCONSULTAS
select nome, votos_positivos from receita
where votos_positivos>votos_negativos
order by votos_positivos desc
limit 3;

select nome_completo from usuario 
where FK_SEXO_id_sexo not in 
(select FK_SEXO_id_sexo from usuario 
where FK_SEXO_id_sexo<>0);

select nome_completo from usuario 
where FK_SEXO_id_sexo in
(select FK_SEXO_id_sexo from usuario
where FK_SEXO_id_sexo<>0);