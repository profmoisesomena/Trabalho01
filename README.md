# TRABALHO 01 - Cook Inc
Trabalho desenvolvido durante a disciplina de BD

# Sumário
  
### 1.COMPONENTES<br>
Isabella de Assis e Sergio Vago <br>
  
### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> e motivação da escolha realizada. <br>
  
### 3.MINI-MUNDO<br>
O banco de dados de receita foi pensado em algo que funcionaria, basicamente, como um livro grande de receitas aonde seu grande diferencial dos sites e aplicativos já existentes que disponibilizam esse mesmo serviço e na ferramenta de busca que funcionaria com palavras chaves ao invés de uma frase inteira, assim, possibilitando ao usuário pesquisar receitas de acordo com o que ele já tem em casa ou que ele pretende usar em uma receita. A ideia principal e que o site também ofereça aos usuários uma simples interação - como comentar, aprovar ou reprovar uma receita. Onde esse usuário terá/fornecerá tais informações: - Obrigatório: E-mail (para Login e contato); senha; Nome e sobrenome; Apelido para exibição; - Opcional: Telefone; Endereço; Sexo; Foto.                      
Nos menus principais do site terá a página inicial e a página com as categorias de receitas (massas, sobremesas, refeições, bebidas, drinks, vegano, vegetariano, petiscos). Onda a receita terá os seguintes atributos: Ingredientes; Modo de preparo; Tempo de preparo; Porções; Descrição; Foto; Vídeo Tutorial;

O visitante poderá se cadastrar no site, assim mantendo-se atualizado sobre novas receitas que possam lhe interessar (sugestões serão feitas através do envio de e-mails baseadas nas preferencias, interações e avaliações do usuário no site). Na página inicial/principal terá um ranking dizendo quais as três receitas melhor avaliadas pelos usuários na semana (função permitida somente para quem estiver cadastrado e ligado no site), assim como, também haverá a receita mais bem avaliadas entre todas, na semana, na aba principal das categorias.
 
### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/Conceitual_CookInc.pngr?raw=true "MOCKUP")


#### 4.1 TABELA DE DADOS DO SISTEMA:
Tabela: https://github.com/CookIncBD2/Trabalho01/blob/master/CookInc(Tabela)_Isabella_e_Sergio.ods

4.2. a) O sistema fornecerá os seguintes relatórios e informações com releção ao usuário: email, senha, apelido, sexo, nome completo, telefone e UF; com relação a receitas: nome da receita, votos positivios e negativos, imagem da receita, ingrediente, modo de preparo, prorções, tempo de preparo, video tutorial, categoria, posição no ranking, comentario sobre a pessoa e o número de seguidores da mesma.

b)
1- Quais receitas o usuário enviou</br>
2- Quantidade de votos positivos em uma receita</br>
3- Quantidade de votos negativos em uma receita</br>
4- Nome do usuário que enviou a receita</br>
5- Nome do usuário que comentou uma receita </br>
6- Nome do usuário que comentou outro usuário</br>
7- A qual categoria cada receita pertence</br>
8- As regiões onde os usuários se localizam</br>
9- O sexo predominante entre os usuários</br>
10- Número de seguidores de cada usuário</br>


### 5.MODELO CONCEITUAL<br>

![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/Conceitual_CookInc.png?raw=true "Modelo Conceitual")


#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
### 7	MODELO FÍSICO<br>

        Entrega até este ponto em (data a ser definida)
        
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários


        Entrega até este ponto em (data a ser definida)
        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em (data a ser definida)
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

#### Link para BrModelo:
http://sis4.com/brModelo/brModelo/download.html
