CREATE DATABASE loja_de_computadores;
USE loja_de_computadores;

CREATE TABLE categoria (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome_categoria VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE fabricantes (
  id_fabricante INT AUTO_INCREMENT PRIMARY KEY,
  nome_fabricante VARCHAR(255) NOT NULL,
  cnpj VARCHAR(14) NOT NULL UNIQUE
);

CREATE TABLE produtos (
  id_produto INT AUTO_INCREMENT PRIMARY KEY,
  nome_produto VARCHAR(255) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL,
  quantidade_estoque INT NOT NULL,
  id_categoria INT,
  id_fabricante INT,
  FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
  FOREIGN KEY (id_fabricante) REFERENCES fabricantes(id_fabricante)
);

INSERT INTO categoria (nome_categoria) VALUES
('Desktop'),
('Laptop'),
('Monitor'),
('Teclado'),
('Mouse');

INSERT INTO fabricantes (nome_fabricante, cnpj) VALUES
('Computech', '1234567800199'), 
('PowerTech', '9876543200188'), 
('TechWorld', '5678912300177');

INSERT INTO produtos (nome_produto, preco, quantidade_estoque, id_categoria, id_fabricante) VALUES
('Laptop X Pro', 4500.00, 10, 2,1),
('Desktop PowerStation',3800.00, 8, 1,2),
('Monitor Ultra HD', 1200.00, 15, 3,3),
('Teclado Mecânico Pro', 300.00, 25, 4,1),
('Mouse Gamer X100', 150.00, 30, 5,2),
('Laptop Y Basic', 3200.00, 12, 2,3),
('Desktop WorkStation', 4000.00, 5, 1,1),
('Monitor Full HD', 850.00, 20, 3,2);

