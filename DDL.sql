CREATE DATABASE bd_volksway;

USE bd_volksway;

CREATE TABLE tb_usuarios(
	id_usuario BINARY(16) NOT NULL,
    id_empresa BINARY(16) NOT NULL,
    nome VARCHAR(50) NOT NULL UNIQUE,
    telefone CHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(50) NOT NULL UNIQUE,
    dataNascimento DATE NOT NULL UNIQUE,
    cidade VARCHAR(50) NOT NULL UNIQUE,
    cpf CHAR(50) NOT NULL UNIQUE,
    tipoUsuario TINYINT NOT NULL UNIQUE,
    
    PRIMARY KEY(id_usuario)
    );
    
DROP TABLE tb_usuarios;

    
CREATE TABLE tb_empresas(
	id_empresa BINARY(16) NOT NULL,
	rasaoSocial VARCHAR(50) NOT NULL UNIQUE,
    cidade VARCHAR(50) NOT NULL UNIQUE,
    cnpj CHAR(50) NOT NULL UNIQUE
	);
    
DROP TABLE tb_empresas;
    
CREATE TABLE tb_propagandas(
	id_propaganda BINARY(16) NOT NULL,
	titulo VARCHAR(50) NOT NULL UNIQUE,
	url VARCHAR(50) NOT NULL UNIQUE,
    descricao VARCHAR(50) NOT NULL UNIQUE,
    imagem VARCHAR(50) NOT NULL UNIQUE,
	publicoAlvo VARCHAR(50) NOT NULL UNIQUE,
    dataLimite DATE,
    preco FLOAT,
    importancia BIT
	);
    
DROP TABLE tb_propagandas;
        
CREATE TABLE tb_veicuolos(
	id_veiculo BINARY(16) NOT NULL,
    id_usuario BINARY(16) NOT NULL,
	codigoChassi CHAR(50) NOT NULL UNIQUE,
    marca CHAR(50) NOT NULL UNIQUE,
    placa CHAR(8) NOT NULL UNIQUE
);  
  
CREATE TABLE tb_interesses(
	id_interesse BINARY(16) NOT NULL,
    id_propaganda BINARY(16) NOT NULL,
    id_usuario BINARY(16) NOT NULL,
    meioContatoEmail BIT
);  

CREATE TABLE tb_checklist(
	id_checklist BINARY(16) NOT NULL,
    id_veiculo BINARY(16) NOT NULL,
    freio BIT,
    combultivel BIT,
    oleo BIT,
    fotoPneu VARCHAR(50) NOT NULL UNIQUE,
    arCondicionado BIT
    
);