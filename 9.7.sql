use cookinc;

#9.7	CONSULTAS COM GROUP BY 
select FK_SEXO_id_sexo,count(*) as qnt_m_f from usuario
group by FK_SEXO_id_sexo;

select porcoes,count(*) as qnt_receitas_com_mesma_qnt_porcoes from receita
group by porcoes;

select FK_DATA_id_data,count(*) as qnt_usuarios_com_mesma_data from usuario
group by FK_DATA_id_data;

select FK_USUARIO_id_usuario,count(*) as qnt_seguindo from segue
group by FK_USUARIO_id_usuario;

select FK_USUARIO_id_usuario_,count(*) as qnt_seguidores from segue
group by FK_USUARIO_id_usuario_;
