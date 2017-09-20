drop database IF exists cookinc;
create database IF NOT EXISTS cookinc;
use cookinc;

/* Lógico___CookInc: */

CREATE TABLE USUARIO (
    email VARCHAR(100),
    senha VARCHAR(100),
    apelido VARCHAR(100),
    nome_completo VARCHAR(100),
    telefone INT,
    num_seguidores INT,
    receitas_enviadas varchar(50),
    id_usuario int PRIMARY KEY,
    FK_endereco_id_ender INT,
    FK_SEXO_id_sexo int
);

CREATE TABLE RECEITA (
    imagem varchar(50),
    modo_de_preparo VARCHAR(1000),
    porcoes int,
    tempo_de_preparo int,
    contador_top INT,
    contador_lixo INT,
    id_rec INT PRIMARY KEY,
    video_tutorial VARCHAR(1000),
    colocacao int,
    nome varchar(50),
    ingredientes varchar(500),
    FK_USUARIO_id_usuario int,
    FK_CATEGORIA_id_cat int
);

CREATE TABLE COMENTARIO (
    texto VARCHAR(1000),
    id_coment int PRIMARY KEY
);

CREATE TABLE CATEGORIA (
    id_cat int PRIMARY KEY,
    nome varchar(50)
);

CREATE TABLE endereco (
    nome_uf_ char(2),
    id_ender INT PRIMARY KEY
);

CREATE TABLE SEXO (
    id_sexo int PRIMARY KEY,
    m_f char(1)
);

CREATE TABLE ENVIA_RECEBE (
    id_en_re int PRIMARY KEY,
    envia_recebe varchar(20)
);

CREATE TABLE POSSUI (
    FK_RECEITA_id_rec INT,
    FK_COMENTARIO_id_coment int
);

CREATE TABLE USUARIO_COMENTARIO (
    FK_COMENTARIO_id_coment int,
    FK_USUARIO_id_usuario int
);

CREATE TABLE E (
    FK_COMENTARIO_id_coment int,
    FK_ENVIA_RECEBE_id_en_re int
);
 
ALTER TABLE USUARIO ADD CONSTRAINT FK_USUARIO_1
    FOREIGN KEY (FK_endereco_id_ender)
    REFERENCES endereco (id_ender);
 
ALTER TABLE USUARIO ADD CONSTRAINT FK_USUARIO_2
    FOREIGN KEY (FK_SEXO_id_sexo)
    REFERENCES SEXO (id_sexo);
 
ALTER TABLE RECEITA ADD CONSTRAINT FK_RECEITA_1
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario);
 
ALTER TABLE RECEITA ADD CONSTRAINT FK_RECEITA_2
    FOREIGN KEY (FK_CATEGORIA_id_cat)
    REFERENCES CATEGORIA (id_cat);
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_0
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec);
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_1
    FOREIGN KEY (FK_COMENTARIO_id_coment)
    REFERENCES COMENTARIO (id_coment);
 
ALTER TABLE USUARIO_COMENTARIO ADD CONSTRAINT FK_USUARIO_COMENTARIO_0
    FOREIGN KEY (FK_COMENTARIO_id_coment)
    REFERENCES COMENTARIO (id_coment);
 
ALTER TABLE USUARIO_COMENTARIO ADD CONSTRAINT FK_USUARIO_COMENTARIO_1
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario);
 
ALTER TABLE E ADD CONSTRAINT FK_E_0
    FOREIGN KEY (FK_COMENTARIO_id_coment)
    REFERENCES COMENTARIO (id_coment);
 
ALTER TABLE E ADD CONSTRAINT FK_E_1
    FOREIGN KEY (FK_ENVIA_RECEBE_id_en_re)
    REFERENCES ENVIA_RECEBE (id_en_re);
#-------------------------------------------------------

Insert into sexo (id_sexo, m_f) values (0,'F'),(1,'F'),(2,'M'),(3,'M'),(4,'M'),(5,'M'),(6,'F'),(7,'F'),(8,'M'),(9,'F');

select * from sexo;

#-------------------------------------------------------

Insert into usuario(id_usuario,email, senha, apelido, nome_completo, num_seguidores, receitas_enviadas) VALUES 
(0,'joana@gmail.com','banana25','Juju','Joana de Oliveira Santos',18,'Papa de Milho'),(
1,'maria@gmail.com','MP050699','Penha','Maria de Mello',30,'Arroz Carreteiro'),(
2,'jose@gmail.com','Flamengo321','Jojo','José Pereira Silva',90,'Mousse de maracujá'),(
3,'marcio@gmail.com','Saopaulo24','Marcinho','Marcio Gomes dos Santos',21,'Torresmo'),(
4,'pedro@gmail.com','senha123','Pedru','Pebro Batista dos Santos',178,'Lasanha de Beringela'),(
5,'bruno@gmail.com','eunaosei','Bruninho','Bruno de Assis',9,'vitamina de banana'),(
6,'angelita@gmail.com','244466666','Gelita','Angelita da Silva Pereira',67,'Bolo de Abacaxi'),(
7,'ana_paula@gmail.com','434747742372Anap','Naninha','Ana Paula Fernandes',102,'Pudim de leite condensado'),(
8,'uilson@gmail.com','UBS1965','Tico','Uilson Batista dos Santos',1,'Caipirinha'),(
9,'leticia@gmail.com','12345678','Lele','Letícia Soares Rodrigues',51,'Biscoito de banana e aveia');

select * from usuario;

#-------------------------------------------------------

insert into endereco(id_ender,nome_uf_) values (0,'ES'),(1,'RJ'),(2,'SP'),(3,'PR'),(4,'MG'),(5,'MT'),(6,'MS'),(7,'SC'),(8,'RS'),(9,'AC');

select * from endereco;

#-------------------------------------------------------

insert into categoria(id_cat,nome) values (0,'Refeições'),(1,'Sobremesas'),(2,'Massas'),(3,'Lanches'),(4,'Bebidas'),(5,'Drinks'),(6,'Petiscos'),(7,'Fitness'),(8,'Vegetariano'),(9,'Vegano');

select * from categoria;

#-------------------------------------------------------


insert into comentario(id_coment,texto) values (0,'Lixo'),(1,'Lixo'),(2,'Muito bom!'),(3,'Muito bom!'),(4,'Faltou açucar!'),(5,'Faltou açucar!'),(6, 'Muito ruim'),(7,'Muito ruim'),(8,'Legal'),(9,'Legal');

select * from comentario;

#-------------------------------------------------------

insert into envia_recebe(id_en_re,envia_recebe) values (0,'envia'),(1,'recebe');

select * from envia_recebe;

#-------------------------------------------------------


insert into receita(id_rec,nome,imagem,video_tutorial,colocacao,ingredientes,modo_de_preparo,porcoes,tempo_de_preparo,contador_top,contador_lixo) values (0,'papademilho','aparelho.jpeg','link.YouTube.com',NULL,' 6 Espigas de milho verde médias;1 Pitada de bicabornato de sódio;1 Litro de leite;1 Xícara de açúcar;1 Pitada de sal;Canela em pó',' 1 – Retire o milho da espiga e bata no liquidificador;2 – Coe o milho batido em uma peneira;3 - Leve o suco do milho ao fogo médio e acrescente açúcar, o sal e o bicarbonato;4 – Mexa bem até engrossar, deixe por mais 5 minutos sem mexer;5 – Sirva em uma travessa, polvilhando em canela em pó;6 – Sirva geladinho. ',6,40, 27, 43),
(1,'arrozcarreteiro','arrozcarreteiro.jpeg','link.youtube.com',NULL,' 1 Kg de carne seca;2 Xícaras de chá de arroz;2 Dentes de alho picados;6 Colheres de sopa de azeite; Sal a gosto;1 Cebola picada;1 Colher de sopa de cheiro-verde',' 1 – Deixe a carne seca de molho de véspera, troque a água e cozinhe até ficar macia;2 – Desfie;3 – Frite em uma panela com azeite;4 – Quando a carne estiver dourada, coloque a cebola e o alho;5 – Junteo arroz e frite;6 – Acrescente água fervente e cozinhe em fogo baixo até o arroz ficar macio; 7 – Salpique o cheiro-verde e sirva em seguida;8 – Bom apetite. ',6 ,40, 49, 130),
(2,'mousse de maracuja','moussedemaracuja.jpeg','link.youtube.com',1,' 1 Lata de leite condensado;1 lata de suco de maracujá (medida pela lata de leite condensado);1 Lata de creme de leite sem soro',' 1 – Em um liquidificador bata o creme de leite, o leite condensado e o suco concentrado de maracujá:2 – Em uma tigela despeje a mistura e leve a geladeira por no mínimo 4 horas;3 – Sirva-se ',6,5 , 302,43),
(3,'torresmo','torresmo.jpeg','link.youtube.com',2,' Kg de torresmo em cubos (panceta ou toicinho);Sal;½ Copo de óleo ',' 1 - Tempere os torresmos com o sal e deixe descansar por uns 15 minutos;2 - Coloque um pouco de óleo numa panela e quando estiver quente, coloque os cubos do torresmo;3 - Tampe a panela para não emporcalhar o fogão;4 - Com uma colher de pau vá mexendo de vez em quando para não grudar um torresmo no outro;5 - Eles vão soltar mais gordura ainda e quando estiverem opacos, com cara de que estão fritos, desligue o fogo, retire daquela gordura os torresmos e coloque-os na geladeira para esfriar;6 – Reserve a gordura;7 - Quando os mesmos estiverem frios (não gelados), esquente a gordura novamente e quando estiver frigindo, coloque de volta os torresmos e vá mexendo até eles pururucarem;8 – Retire após e coloquem em um recipiente com papel toalha. ',40,60, 190, 12),
(4,'lasanha de beringela','lasanhadeberingela.jpeg','link.youtube.com',null,' 3 Berinjelas grandes;1 Lata de molho de tomate;1 Maço de coentro cortado em pedaços pequenos; Azeitonas sem caroço cortadas;300 g de queijo mussarela fatiado;300 g de presunto fatiado;2 Colheres de azeite;Queijo catupiry',' 1 – Corte as berinjelas em fatias finas, no sentido do comprimento;2 Em uma assadeira refrataria, coloque no fundo, as duas colheres de azeite e um pouco de molho de tomate;3 – Coloque então uma camda de berinjela;4 – Cubra com molho de tomate, salpique com azeitonas e coentro;5 – Em seguida, coloque uma camada de presunto;6 - Acrescente uma camada de berinjela, cubra com molho de tomate e por cima coloque uma camada de queijo mussarela;7 - Repita os passos 3, 4 e 5, para formar mais duas camadas;8 - Coloque por cima da última camada, queijo catupiry a gosto, e cubra a assadeira com papel alumínio;9 - Leve ao forno em temperatura de 180º C graus por cerca de 30 minutos, para cozinhar;10 - Após isso, retire o papel alumínio e deixe por mais 5 a 10 minutos para gratinar;11 – Sirva quente. ',8,40, 70, 41),
(5,'vitamina de banana','vitaminadebanana.jpeg','link.youtube',null,' 2 Bananas;225 ml de leite; semidesnatado;4 Colheres (sopa) de água;2 Colheres (sopa) de açúcar mascavo;8 Cubos de gelo. ',' 1 – Em um liquidificador junte as bananas e o o leite;2 – Bata até as bananas ficarem picadas;3 – Despeje a água e o açúcar mascavo;4 – Bata a mistura até ficar homogênea;5 – Acrescente os cubos de gelo;6 – Volte a bater até que a mistura fique homogênea de novo;7 – Coloque em taças e sirva imediatamenteMassa',4 ,5 , 35, 50),
(6,'bolo de abacaxi','bolodeabacaxi.jpeg','link.youtube.com',3,' 2 Xícaras de açúcar;3 Ovos inteiros;2 Colheres de (sopa) de margarina;200 ml de leite ou 1 copo pequeno;1 colher (sopa) de fermento para bolo. Calda: 1 e ½ Xícaras de açúcar;1 Abacaxi cortadinho ou em rodelas grossas ou picado, como preferir ',' 1 – Bata no liquidificador os ovos, açúcar, margarina e depois adicione a farinha aos poucos;2 – Por último o fermento, bata bem até ficar uma massa lisa sem bolinhas;3 – Na forma de bolo coloque o açúcar direto na forma e derreta até virar um caramelo;4 – Espere esfriar, coloque o abacaxi que cortou e acrescente toda a massa e coloque para assar;5 – No forno a 200 º asse por 50 minutos ',10, 60,  200, 58),
(7,'pudim de leite condensado','pudimdeleitecondensado.jpeg','link.youtube',null,' Pudim: 1 lata de leite condensado; 1 lata de leite (medida no leite condensado); 3 ovos inteiros; Calda: 1 Xícara (chá) de açúcar; 2 Xícaras de água ',' Pudim: 1 – Primeiro, bata bem os ovos no liquidificador;2 – Acrescente o leite condensado e o leite e bata novamente. Calda: 1 – Derreta o açúcar até ficar moreno, acrescente a água e deixe engrossar;2 – Coloque em uma forma redonda e despeje a massa do pudim por cima;3 – Asse em forno médio por 45 minutos, com a Assadeira redonda dentro de uma maior com água;4 – Espete um garfo para ver se está bem assado;5 – Deixe esfriar e desenforme ',8 ,60 , 230, 76),
(8,'caipirinha','caipirimha.jpeg','link.youtube.com',null,' 1 Limão Taiti;2 Colheres (de sobremesa) de açúcar;Gelo',' 1 – Corte as pontas do limão e em seguida corte-o ao meio;2 – Faça um corte em V e retire a parte central, pois ela faz a caipirinha adquirir um sabor amargo;3 – Corte o limão em pedaços menores;4 – Misture o limão e o açúcar em um copo;5 – Amasse a mistura suavemente com um pilão;6 – Complete com a cachaça. ',1,3 , 60, 13),
(9,'biscoito de banana e aveia','biscootodebananaeaveia.jpeg','video_link',null,' 2 Bananas nanicas maduras;1 xícara (de chá) de aveia. ',' 1 - Amasse a banana com um garfo e misture com a aveia, aqueça o forno em temperatura alta;2 - Coloque colheradas da massa em uma assadeira untada. Cada banana tem sua própria história, umas podem estar mais maduras, outras maiores, se achar que a massa está mole ainda, (quando caem a colherada se espalha demais) adicione um pouco mais de aveia;3 - Leve ao forno por 15-20 minutos ou até que esteja douradinho;4 – Retire da assadeira e deixe esfriar sobre uma grade;5 – Sirva em Seguida, após o resfriamento ou guarde em pote hermético por até 3 dias ',16,30, 70, 10);
select * from receita;