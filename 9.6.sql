use cookinc;

#9.6	CONSULTAS COM JUNÇÃO 
select * from usuario
inner join sexo
on(FK_SEXO_id_sexo=id_sexo)
inner join endereco
on(FK_ENDERECO_id_endereco=id_endereco)
inner join data
on(FK_DATA_id_data=id_data)
inner join logadouro
on(FK_LOGADOURO_id_logadouro=id_logadouro)
inner join bairro
on(FK_BAIRRO_id_bairro=id_bairro)
inner join municipio mu
on(FK_MUNICIPIO_id_municipio=id_municipio)
inner join municipio_estado me
on(me.FK_MUNICIPIO_id_municipio=mu.id_municipio)
inner join estado_uf
on(me.FK_ESTADO_UF_id_estado=id_estado);
