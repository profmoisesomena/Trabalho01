use precobaixo;

insert into usuário (cod_usuario, nome, login, passwd, email)
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
        (9, 'maçã', 3.60);
        
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
        (8, 'c:\\preco_baixo\\imagens\\minhafoto1.jpg'),
        (9, 'c:\\preco_baixo\\imagens\\minhafoto2.jpg'),
        (10, 'c:\\preco_baixo\\imagens\\foto004.jpg'),
        (11, 'c:\\preco_baixo\\imagens\\foto005.jpg'),
        (12, 'c:\\preco_baixo\\imagens\\foto1.jpg'),
        (13, 'c:\\preco_baixo\\imagens\\minhafoto3.jpg'),
        (14, 'c:\\preco_baixo\\imagens\\foto0030.jpg'),
        (15, 'c:\\preco_baixo\\imagens\\minhafoto8.jpg'),
        (16, 'c:\\preco_baixo\\imagens\\minhafoto9.jpg');
        
insert into supermercado (id_supermercado, nome)
values  (1, 'Carone'),
		(2, 'Epa'),
        (3, 'Atacadão'),
        (4, 'Walmart'),
        (5, 'Extrabom'),
        (6, 'Epa'),
        (7, 'Atacadão'),
        (8, 'Carone'),
        (9, 'Extrabom');
        
insert into bairro (id_bairro, nome)
values  (1, 'St. Lúcia'),
        (2, 'Laranjeiras'),
        (3, 'Aribiri'),
        (4, 'Centro'),
        (5, 'Nova Carapina'),
        (6, 'Jaburuna'),
        (7, 'Jardim da Penha'),
        (8, 'Jardim da Penha'),
        (9, 'Centro');
        
insert into cidade (id_cidade, nome)
values  (1, 'Vitória'),
		(2, 'Serra'),
        (3, 'Vila Velha'),
        (4, 'Vitória'),
        (5, 'Serra'),
        (6, 'Vila Velha'),
        (7, 'Vitória'),
        (8, 'Vitória'),
        (9, 'Guarapari');
        

        
        