# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1.COMPONENTES<br>
Ramom Matieli(ramommatieli@gmail.com)<br> 
Jean Carlos(jcferreirasilva0@gmail.com)<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
O projeto Preço Baixo consiste em uma aplicação na qual o usuário poderá fazer buscas, afim de encontrar o menor preço em algum supermercado do produto desejado. Este projeto visa ajudar as pessoas que procuram economizar na hora de ir as compras. Devido a crise econômica que passamos em nosso país, muitos buscam economizar o máximo possível. Com isso em mente, veio a ideia de criar uma aplicação que ajudaria as pessoas a economizar nas compras em supermercados. <br>

### 3.MINI-MUNDO<br>

O Sistema terá em sua pagina inicial a opção de **LOGIN, CADASTRO DE USUÁRIO e ESQUECI MINHA SENHA.** Para a criar um usuário haverá a inclusão do **NOME, EMAIL, INCLUSÃO DE FOTO DE LOGIN, DATA DE NASCIMENTO, SENHA e CONFIRMAÇÃO DA SENHA.** Agora, Se o utilizador estiver cadastrado e for realizar o **LOGIN**, necessariamente, terá que digitar o email e a senha, inseridos no ato de CADASTRO DE USUÁRIO. 

Ao entrar, encontrará as categorias **Recentes, Hortifruti, Enlatados, Massas, Higiene e +Add, a opção de pesquisar um produto, a opção de adicionar uma nova Oferta, a opção de acessar o perfil próprio e a opção de sair da conta/logout.** Ao clicar em uma categoria aparecerão os produtos relacionados, por exemplo, se o usuário clicar em massa aparecerão produtos como Macarrão, Lasanha ou qualquer outro produto relacionado. Entretanto, se for a categoria **+Add**, levará o usuários para cadastrar uma nova categoria - o usuário terá que colocar o nome dessa categoria, e clicar em adicionar. Agora, para **adicionar uma oferta**, o usuário informará o nome do produto, o preço, unidade de medida, supermercado, bairro, cidade, categoria e imagem da produto.
Quando clicar em um produto será informado todo detalhe da oferta, como o nome do produto, o preço, unidade de medida, supermercado, bairro e cidade.

O usuário pode pesquisar por um determinado produto, afim de encontrar o menor preço, bem como onde se encontra a oferta, e uma foto da mesma (optativo), sendo que essas informações estão contidas em uma publicação. Além de também poder filtrar por categoria (Hortifruti, Enlatados, Massas, Higiene, etc). Ao adicionar nova oferta, o usuário tem que incluir as mesmas informações que ele encontra ao pesquisar por uma oferta.

Mas, lembrando que para tudo ocorra bem, é vital a participação dos usuários, pois eles que ficam encarregados de colaborar com as publicações de promoções, bem como adicionar novas categorias e supermercados. E com essa interação dos usuários, a aplicação cresceria, se tornando uma grande comunidade que ajudaria a muitas pessoas na hora de ir as compras no supermercado. <br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Pre%C3%A7o-Baixo.png)

Link: https://github.com/PrecoBaixo/Trabalho01/blob/master/Pre%C3%A7o%20Baixo.pdf

#### 4.1 TABELA DE DADOS DO SISTEMA:
    
Link: https://github.com/PrecoBaixo/Trabalho01/blob/master/Tabela%20BD.xlsx
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 10 principais relatórios que podero ser obtidos por meio do sistema proposto!
    
    Mostrará relatorios de promoções, usuários e mercados, e informará preços, tipos de  produtos e locais de mercado.
    RELATÓRIOS:
    -   Nome do Usuário;
    -   Email do Usuário;

### 5.MODELO CONCEITUAL<br>
    a) NOTACAO ENTIDADE RELACIONAMENTO

![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Modelo_conceitual.jpg)

Link: https://github.com/PrecoBaixo/Trabalho01/blob/master/Modelo_conceitual.brM3    
    

#### 5.1 Validação do Modelo Conceitual
    EuPreciso: Criscia de Oliveira Souza e Hannah Santos Lucas
    CookInc: Sergio Vago e Isabella de Assis

#### 5.2 DECISÕES DE PROJETO
    Não foi tomada nenhuma decisão especial.
        
#### 5.3 DESCRIÇÃO DOS DADOS 
     USUÁRIO:
        Campo cod_usuario: foi escolhido o campo como chave primária; é um atributo do tipo INT, que será o identificador da tabela Usuário.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome real do usuário, e pode incluir caracteres e números com comprimento variável.
        Campo login: optou-se por usar o tipo varchar, o qual representa o login (nome) do usuário para entrar na aplicação, e pode incluir caracteres e números com comprimento variável.
        Campo passwd: optou-se por usar o  tipo varchar, o qual vai representar a senha (password) do usuário, que pode incluir     caracteres e números com comprimento variável.
        Campo email: foi escolhido o tipo varchar, que pode incluir caracteres e números de comprimento variáveis; vai representar uma informação de validação do usuário.
        
    IMAGEM:
        Campo id_imagem: foi escolhido usar o tipo INT, pois vai ser um identificador numérico da tabela.
        Campo link: optou-se por usar o tipo varchar, que pode incluir caracteres e números de comprimento variável, sendo que será o atributo que comportará o local (endereço) da imagem.
    
    PUBLICAÇÃO:
        Campo id_publicacao: foi escolhido usar o tipo INT, pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome (título) da publicação, e pode incluir caracteres e números com comprimento variável.
    
    PRODUTO:
        Campo id_produto: foi escolhido usar o tipo INT, pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome do produto, e pode incluir caracteres e números com comprimento variável.
        Campo preco: optou-se por usar o tipo FLOAT, pois o atributo armazena números decimais (quebrados, ou com virgula).
    
    SUPERMERCADO:
        Campo id_supermercado: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome do supermercado, e pode incluir caracteres e números com comprimento variável.
    
    BAIRRO:
        Campo id_bairro: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome do bairro, e pode incluir caracteres e números com comprimento variável.
     
     CIDADE:
        Campo id_bairro: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome da cidade, e pode incluir caracteres e números com comprimento variável.
    
    UN. MEDIDA:
        Campo id_un_medida: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo kg: optou-se por usar o tipo bool, pois o campo é assinalado (1) ou não (0).
        Campo unidade: optou-se por usar o tipo bool, pois o campo é assinalado (1) ou não (0).
    
    CATEGORIA:
        Campo id_categoria: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome da categoria, e pode incluir caracteres e números com comprimento variável.
        
### 6	MODELO LÓGICO<br>

![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Modelo_l%C3%B3gico.jpg)

Link: https://github.com/PrecoBaixo/Trabalho01/blob/master/Modelo_L%C3%B3gico.brM3

### 7	MODELO FÍSICO<br>
 Link: https://github.com/PrecoBaixo/Trabalho01/blob/master/Modelo_f%C3%ADsico.txt
              
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Dados fictícios, obtidos através da criação da tabela.
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
       Script para criação da tabela: https://github.com/PrecoBaixo/Trabalho01/blob/master/Cria%20banco%20de%20dados.sql
       Script para inserção de dados na tabela: https://github.com/PrecoBaixo/Trabalho01/blob/master/insert.sql
        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>


select * from bairro;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/bairro.PNG)


select * from categoria;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/categoria.PNG)

select * from cidade;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/cidade.PNG)

select * from contem;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/contem.PNG)

select * from esta;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/esta.PNG)

select * from esta_contido;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/esta_contido.PNG)

select * from imagem;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/imagem.PNG)

select * from pertence;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/pertence.PNG)

select * from possui;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/possui.PNG)

select * from prod_tag;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/prod_tag.PNG)

select * from produto;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/produto.PNG)

select * from publica;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/publica.PNG)

select * from quantidade;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/quantidade.PNG)

select * from supermercado;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/supermercado.PNG)

select * from tag;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/tag.PNG)

select * from tem;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/tem.PNG)

select * from un_medida;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/un_medida.PNG)

select * from usuario;

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>

select * from bairro where nome = "Jardim da Penha";

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/pesquisa%20bairro.PNG)

select * from supermercado where nome = "Walmart";

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/pesquisa%20supermercado.PNG)

select * from un_medida where tipo = "unidade";

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/pesquisa%20un_medida.PNG)

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>

select nome, preco as "produtos e preços" from produto where nome = "Manga" or preco > 4;

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/pesquisa1.PNG)


select nome as "somente nome de categoria" from categoria 
where nome is not null

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/pesquisa2.PNG)



#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
select * from produto where nome like "%C%";

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/9.4/pesquisa1.PNG)

select * from cidade where nome like "S____";

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/9.4/pesquisa2.PNG)

select * from bairro where nome like "%E%"

![alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/9.4/pesquisa3.PNG)


#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
   Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/Join%20Preco%20Baixo.sql
   
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%201.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%202.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%203.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%204.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%205.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%206.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%207.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%208.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%209.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2010.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2011.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2012.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2013.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2014.jpg)
        
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
   Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by.sql
   
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%201.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%202.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%203.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%204.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%205.jpg)        
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
   Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join.sql
   
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join%201.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join%202.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join%203.jpg)
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join%204.jpg)
   
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
  Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/Views.sql
  
  ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/view%201.jpg)
  ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/view%202.jpg)
  ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/view%203.jpg)
  ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/view%204.jpg)
  
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
  Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/subconsultas.sql
  
  ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/subconsulta%201.jpg)
  ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/subconsulta%202.jpg)
  ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/subconsulta%203.jpg)
  
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
