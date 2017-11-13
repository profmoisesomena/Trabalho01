use cookinc;

#9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS 
select sum(votos_positivos) as soma from receita;

select * from usuario
where id_usuario=0 OR FK_ENDERECO_id_endereco=8;
