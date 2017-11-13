use cookinc;

#9.4 CONSULTAS QUE USAM OPERADORES LIKE 
select * from usuario 
where nome_completo like'a%';

select * from tag 
where nomeTag like '#m%';

select * from receita
where nome like '%z%';
