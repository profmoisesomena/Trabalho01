use cookinc;

#9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS 
alter table usuario
add(contador_de_votos INT);

alter table usuario
drop contador_de_votos;

alter table receita
add(visualizacoes INT);

alter table receita
drop visualizacoes;

alter table tag
add(tag_em_alta VARCHAR(30));

alter table tag
drop tag_em_alta;