DROP DATABASE IF EXISTS CookInc;

CREATE DATABASE CookInc;

USE CookInc;

CREATE TABLE USUARIO (
    email VARCHAR(100) NOT NULL ,
    senha VARCHAR(30) NOT NULL,
    nome_completo VARCHAR(100) NOT NULL,
    telefone INT,
    id_usuario int  PRIMARY KEY,
    link_imagem varchar(100),
    FK_SEXO_id_sexo int,
    FK_ENDERECO_id_endereco int,
    FK_DATA_id_data INT
);

CREATE TABLE RECEITA (
    imagem varchar(50) NOT NULL,
    modo_de_preparo VARCHAR(1000) NOT NULL,
    porcoes int NOT NULL,
    votos_positivos INT NOT NULL,
    votos_negativos INT NOT NULL,
    id_rec INT PRIMARY KEY,
    video_tutorial VARCHAR(1000),
    nome varchar(50) NOT NULL,
    FK_USUARIO_id_usuario int ,
    FK_CATEGORIA_id_cat int,
    FK_TEMPO_DE_PREPARO_id_tempo INT
);

CREATE TABLE COMENTARIO (
    texto VARCHAR(1000)  NOT NULL,
    id_coment int PRIMARY KEY,
    FK_RECEITA_id_rec INT,
    FK_USUARIO_id_usuario int ,
    FK_DATA_id_data INT,
    FK_HORA_id_hora INT
);

CREATE TABLE CATEGORIA (
    id_cat int PRIMARY KEY,
    nome varchar(50) NOT NULL
);

CREATE TABLE SEXO (
    id_sexo int PRIMARY KEY,
    m_f char(1) NOT NULL
);

CREATE TABLE COMENTARIO_SUB (
    FK_COMENTARIO_id_coment int,
    FK_DATA_id_data INT,
    FK_HORA_id_hora INT
);

CREATE TABLE ENDERECO (
    complemento varchar(50),
    numero varchar(50),
    id_endereco int PRIMARY KEY,
    FK_LOGADOURO_id_logadouro INT 
);

CREATE TABLE INGREDIENTE (
    id_ingrediente int PRIMARY KEY,
    nome varchar(100) NOT NULL,
    FK_QUANTIDADE_id_quantidade INT
);

CREATE TABLE TAG (
    id_tag int PRIMARY KEY,
    nomeTag varchar(50)
);

CREATE TABLE DATA (
    id_data INT PRIMARY KEY,
    data date NOT NULL
);

CREATE TABLE HORA (
    id_hora INT PRIMARY KEY,
    hora TIME NOT NULL
);

CREATE TABLE FAVORITO (
    FK_RECEITA_id_rec INT,
    FK_USUARIO_id_usuario int 
);

CREATE TABLE ESTADO_UF (
    id_estado INT PRIMARY KEY,
    uf CHAR(2) NOT NULL
);

CREATE TABLE MUNICIPIO (
    id_municipio INT  PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE BAIRRO (
    id_bairro INT  PRIMARY KEY,
    nome VARCHAR(50),
    FK_MUNICIPIO_id_municipio INT 
);

CREATE TABLE LOGADOURO (
    id_logadouro INT  PRIMARY KEY,
    nome VARCHAR(50),
    FK_BAIRRO_id_bairro INT 
);

CREATE TABLE CEP (
    id_cep INT  PRIMARY KEY,
    cep VARCHAR(30)
);

CREATE TABLE QUANTIDADE (
    id_quantidade INT PRIMARY KEY,
    quantidade VARCHAR(30) NOT NULL
);

CREATE TABLE TEMPO_DE_PREPARO (
    id_tempo INT PRIMARY KEY,
    tempo VARCHAR(30)
);

CREATE TABLE SEGUE (
    FK_USUARIO_id_usuario int ,
    FK_USUARIO_id_usuario_ int 
);

CREATE TABLE ID_COMENTARIO (
    FK_COMENTARIO_id_coment int
);

CREATE TABLE RECEITA_INGREDIENTE (
    FK_INGREDIENTE_id_ingrediente int,
    FK_RECEITA_id_rec INT
);

CREATE TABLE RECEITA_TAG (
    FK_RECEITA_id_rec INT,
    FK_TAG_id_tag int
);

CREATE TABLE MUNICIPIO_ESTADO (
    FK_ESTADO_UF_id_estado INT,
    FK_MUNICIPIO_id_municipio INT 
);

CREATE TABLE ENDERECO_CEP (
    FK_CEP_id_cep INT ,
    FK_ENDERECO_id_endereco int
);