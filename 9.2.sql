use cookinc;

#9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE 
select * from receita
where votos_negativos > votos_positivos;

select * from usuario
where FK_SEXO_id_sexo=0;

select nome_completo from usuario
where FK_ENDERECO_id_endereco=5;
