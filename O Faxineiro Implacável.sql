CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

-- Criação da tabela Livros
CREATE TABLE Livros (
    livros_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(13),
    autor_id INT,
    editora_id INT,
    FOREIGN KEY (autor_id) REFERENCES Autores(autor_id),
    FOREIGN KEY (editora_id) REFERENCES Editoras(editora_id)
);

-- Criação da tabela Autores
CREATE TABLE Autores (
    autor_id INT AUTO_INCREMENT PRIMARY KEY,
    autor VARCHAR(255)
);

-- Criação da tabela Editoras
CREATE TABLE Editoras (
    editora_id INT AUTO_INCREMENT PRIMARY KEY,
    editora VARCHAR(255)
);

-- Inserção de dados na tabela Autores
INSERT INTO Autores (autor) VALUES ('John Green');
INSERT INTO Autores (autor) VALUES ('J.K. Rowling');
INSERT INTO Autores (autor) VALUES ('J.R.R. Tolkien');
INSERT INTO Autores (autor) VALUES ('J.D. Salinger');
INSERT INTO Autores (autor) VALUES ('George Orwell');
INSERT INTO Autores (autor) VALUES ('Rick Riordan');
INSERT INTO Autores (autor) VALUES ('João Guimarães Rosa');
INSERT INTO Autores (autor) VALUES ('Machado de Assis');
INSERT INTO Autores (autor) VALUES ('Graciliano Ramos');
INSERT INTO Autores (autor) VALUES ('Aluísio Azevedo');
INSERT INTO Autores (autor) VALUES ('Mário de Andrade');

-- Inserção de dados na tabela Editoras
INSERT INTO Editoras (editora) VALUES ('Intrínseca');
INSERT INTO Editoras (editora) VALUES ('Rocco');
INSERT INTO Editoras (editora) VALUES ('Martins Fontes');
INSERT INTO Editoras (editora) VALUES ('Little, Brown and Company');
INSERT INTO Editoras (editora) VALUES ('Companhia Editora Nacional');
INSERT INTO Editoras (editora) VALUES ('Nova Fronteira');
INSERT INTO Editoras (editora) VALUES ('Companhia das Letras');
INSERT INTO Editoras (editora) VALUES ('Martin Claret');
INSERT INTO Editoras (editora) VALUES ('Penguin Companhia');

-- Inserção de dados na tabela Livros
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('A Culpa é das Estrelas', 2012, '9788580573466', 1, 1);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('Harry Potter e a Pedra Filosofal', 1997, '9788532511010', 2, 2);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('O Senhor dos Anéis: A Sociedade do Anel', 1954, '9788533603149', 3, 3);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('The Catcher in the Rye', 1951, '9780316769488', 4, 4);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('1984', 1949, '9788522106169', 5, 5);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('Percy Jackson e o Ladrão de Raios', 2005, '9788598078355', 6, 1);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('Grande Sertão: Veredas', 1956, '9788520923251', 7, 6);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('Memórias Póstumas de Brás Cubas', 1881, '9788535910663', 8, 7);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('Vidas Secas', 1938, '9788572326972', 9, 5);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('O Alienista', 1882, '9788572327429', 8, 8);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('O Cortiço', 1890, '9788579027048', 10, 9);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('Dom Casmurro', 1899, '9788583862093', 8, 9);
INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES ('Macunaíma', 1928, '9788503012302', 11, 5);
