use cookinc;

#9.8	CONSULTAS COM LEFT E RIGHT JOIN (
select u.nome_completo,s.m_f from usuario u
left outer join sexo s
on(FK_SEXO_id_sexo=id_sexo);

select u.nome_completo,e.complemento from usuario u 
left outer join endereco e
on(FK_ENDERECO_id_endereco=id_endereco);

select u.nome_completo,d.data from usuario u 
right outer join data d
on(FK_DATA_id_data=id_data);

select c.texto,d.data from comentario c
right outer join data d
on(FK_DATA_id_data=id_data); 
