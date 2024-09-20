create database livraria;
use livraria;       
 
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	data_cadastro varchar(50),
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100),
    email VARCHAR(50),
    sexo VARCHAR(10),
    idade int(50)
);

CREATE TABLE pedido (
    id_pedido INT AUTO_INCREMENT,
    id_livro int,
    id_cliente int,
    genero VARCHAR(100),
    data_pedido datetime(06),
    valor_pedido decimal(50),
    valor_livro decimal(50),
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT,
    genero VARCHAR(100) NOT NULL,
    nome_livro varchar(100) NOT NULL,
    valor_livro decimal(50),
    editora varchar(100) NOT NULL,
    PRIMARY KEY (id_livro)
);

 CREATE TABLE vendedor (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_vendedor VARCHAR(255),
    email_vendedor VARCHAR(255),
    telefone_vendedor VARCHAR(20),
    id_livro int,
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
); 

select id_cliente, data_cadastro, nome, endereco, sexo, idade from cliente;
select id_pedido, id_livro, id_cliente, genero, data_pedido, valor_pedido, valor_livro from pedido;
select id_livro, genero, nome_livro, valor_livro, editora from livro;
select id_vendedor, nome_vendedor, email_vendedor, telefone_vendedor, id_livro from vendedor;

SELECT * FROM cliente WHERE id_cliente >2  AND id_cliente < 7;

SELECT * FROM cliente WHERE sexo = 'F';
SELECT * FROM cliente WHERE sexo = 'M';

SELECT * FROM livro ORDER BY genero DESC;
SELECT * FROM cliente ORDER BY nome DESC;

insert into cliente (data_cadastro, nome, endereco, email, sexo, idade)
values 
("10/08/24","Marcio", "Av Joao dias 2400", "mcdias@gmail.com","M", "38"),
("11/07/24","Rafaela", "Rua Felix Andrades 290", "rfandrades@gmail.com","F", "25"),
("12/06/24","Gustavo", "Av Ibirapuera 438", "gvibirapuera@gmail.com","M","52"),
("13/05/24","Antonia", "Rua Geraldo Henrique 65", "athenrique@gmail.com","F", "35"),
("12/04/24","Carlos", "Rua Bartolomeu Ferrari 758", "csferrari@gmail.com","M", "36");

 SELECT * FROM cliente;
 
  INSERT INTO pedido (genero, data_pedido, valor_pedido, valor_livro)
VALUES
("Romance", "2024-06-08", 150.00, 50.00),
("Fantasia", "2024-07-20", 170.00, 40.00),
("Mistério", "2024-08-15", 190.00, 70.00),
("Cronica", "2024-09-26", 120.00, 35.00),
("Poema", "2024-10-28", 155.00, 60.00);

 SELECT * FROM pedido;
 
 INSERT INTO livro (genero, nome_livro, valor_livro, editora)
VALUES
("Romance", "Um verao na Italia","50.00", "Verus"),
("Fantasia", "O meu quintal e maior que o mundo","67.00", "Saraiva"),
("Mistério", "O menino maluquinho","80.00", "Melhoramentos"),
("Cronica", "A hora da estrela","58.00", "Rocco"),
("Poema", "Um amigo para sempre","75.00", "FTD");

  SELECT * FROM livro;
  
  INSERT INTO vendedor (nome_vendedor, email_vendedor, telefone_vendedor)
VALUES
("Carlos Silva", "carlos.silva@example.com", "(11) 99999-9999"),
("Maria Oliveira", "maria.oliveira@example.com", "(21) 98888-8888"),
("JoÃ£o Pereira", "joao.pereira@example.com", "(31) 97777-7777");

SELECT * FROM vendedor;

SHOW TABLES;
