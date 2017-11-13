use precobaixo;

insert into usuario (cod_usuario, nome, login, passwd, email)
values  (1, 'Ramom Matieli', 'ramommatieli13', 'ifes123', 'ramommatieli@hotmail.com'),
		(2, 'Jean Carlos', 'jeancarlos_fs', 'jean123', 'jean_carlos@gmail.com'),
        (3, 'João Vitor', 'joaovitor_st', 'jaovit32', 'jean_carlos@gmail.com'),
        (4, 'Miguel Santos', 'miguel3541', 'miguel12', 'miguel@ig.com.br'),
        (5, 'Davi Soares', 'davi_15a', 'davi159', 'davi12@hotmail.com'),
        (6, 'Arthur Motta', 'arthur_art', 'arthur98', 'arthurferreira@gmail.com'),
        (7, 'Gabriel Silva', 'gabriel_199', 'biel1234', 'gabriel@hotmail.com'),
        (8, 'Sophia Araújo', 'sophia8', 'soso1478', 'sophia@hotmail.com'),
        (9, 'Lucas Alves', 'lucas_alves', 'lucs144', 'lucas@gmail.com'),
        (10, 'Lucineia Martins', 'lucineia_t19', 'luci1234', 'lucineia@gmail.com');
        
insert into produto (id_produto, nome, preco)
values  (1, 'alho', 8.90),
		(2, 'leite ninho', 4.99),
        (3, 'feijão', 4.42),
        (4, 'suco de laranja', 2.50),
        (5, 'café', 3.99),
        (6, 'cebola', 2.00),
        (7, 'arroz', 11),
        (8, 'pipoca', 2.60),
        (9, 'maçã', 3.60),
        (10, 'sardinha', 1.99); #produto do usuário 8
        
insert into categoria (id_categoria, nome)
values  (1, 'Hortifruti'),
		(2, 'Enlatados'),
        (3, 'Bebidas'),
        (4, 'Cereais');
        
insert into un_medida (id_un_medida, tipo)
values  (1, 'kg'),
		(2, 'unidade');
        
insert into tag (id_tag, nome)
values  (1, 'peixe');

insert into imagem (id_imagem, link)
values  (1, 'c:\\preco_baixo\\imagens\\minhafoto4.jpg'),
		(2, 'c:\\preco_baixo\\imagens\\foto01.jpg'),
        (3, 'c:\\preco_baixo\\imagens\\foto02.jpg'),
        (4, 'c:\\preco_baixo\\imagens\\minhafoto1.jpg'),
        (5, 'c:\\preco_baixo\\imagens\\foto003.jpg'),
        (6, 'c:\\preco_baixo\\imagens\\minhafoto5.jpg'),
        (7, 'c:\\preco_baixo\\imagens\\minhafoto.jpg'),
        (8, 'c:\\preco_baixo\\imagens\\minhafoto2.jpg'),
        (9, 'c:\\preco_baixo\\imagens\\minhafoto3.jpg'),
        (10, 'c:\\preco_baixo\\imagens\\foto004.jpg'),
        (11, 'c:\\preco_baixo\\imagens\\foto005.jpg'),
        (12, 'c:\\preco_baixo\\imagens\\foto1.jpg'),
        (13, 'c:\\preco_baixo\\imagens\\foto5.jpg'),
        (14, 'c:\\preco_baixo\\imagens\\foto0030.jpg'),
        (15, 'c:\\preco_baixo\\imagens\\minhafoto8.jpg'),
        (16, 'c:\\preco_baixo\\imagens\\minhafoto9.jpg');
        
insert into supermercado (id_supermercado, nome)
values  (1, 'Carone'),
		(2, 'Epa'),
        (3, 'Atacadão'),
        (4, 'Walmart'),
        (5, 'Extrabom');
               
        
insert into bairro (id_bairro, nome)
values  (1, 'St. Lúcia'),
        (2, 'Laranjeiras'),
        (3, 'Aribiri'),
        (4, 'Centro'),
        (5, 'Nova Carapina'),
        (6, 'Jaburuna'),
        (7, 'Jardim da Penha');
        
        
insert into cidade (id_cidade, nome)
values  (1, 'Vitória'),
		(2, 'Serra'),
        (3, 'Vila Velha'),
        (4, 'Guarapari');
        
insert into contem (FK_IMAGEM_id_imagem, FK_PRODUTO_id_produto)
values  (7, 1),
		(8, 2),
		(9, 3),
        (10, 4),
        (11, 5),
        (12, 6),
        (13, 10),
        (14, 7),
        (15, 8),
        (16, 9);
        
insert into ESTA (FK_BAIRRO_id_bairro, FK_CIDADE_id_cidade)
values  (1, 1),
		(2, 2),
		(3, 3),
        (4, 1),
        (5, 2),
        (6, 3),
        (7, 1),
        (4, 4);
        
insert into ESTA_CONTIDO (FK_SUPERMERCADO_id_supermercado, FK_PRODUTO_id_produto)
values  (1, 1),
		(2, 2),
		(3, 3),
        (4, 4),
        (5, 5),
        (2, 6),
        (3, 7),
        (1, 8),
        (5, 9),
        (4, 10);
        
insert into PERTENCE (FK_CATEGORIA_id_categoria, FK_PRODUTO_id_produto)
values  (1, 1),
		(2, 2),
		(1, 3),
        (3, 4),
        (4, 5),
        (1, 6),
        (4, 7),
        (4, 8),
        (1, 9),
        (2, 10);
        
insert into POSSUI (FK_SUPERMERCADO_id_supermercado, FK_BAIRRO_id_bairro)
values  (1, 1),
		(2, 2),
		(3, 3),
        (4, 4),
        (5, 5),
        (2, 6),
        (3, 7),
        (1, 7),
        (5, 4); 
        
insert into PROD_TAG (FK_PRODUTO_id_produto, FK_TAG_id_tag)
values  (10, 1);

insert into PUBLICA (FK_USUARIO_cod_usuario, FK_PRODUTO_id_produto)
values  (1, 1),
		(2, 2),
		(3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (8, 10),
        (9,8),
        (10, 9);
        
insert into QUANTIDADE (FK_UN_MEDIDA_id_un_medida, FK_PRODUTO_id_produto)
values  (1, 1),
		(2, 2),
		(1, 3),
        (2, 4),
        (1, 5),
        (1, 6),
        (1, 7),
        (1, 8),
        (1,9),
        (2,10);
        
insert into TEM (FK_IMAGEM_id_imagem, FK_USUARIO_cod_usuario)
values  (1, 2),
		(2, 4),
        (3, 5),
        (4, 7),
        (5, 8),
        (6, 10);       

		
        
        