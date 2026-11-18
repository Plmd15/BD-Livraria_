Create Database Livraria_DB;

use Livraria_DB;

--tbl editora

CREATE table tbl_editora(

	Id_editora int,
	NomeEmpresa Varchar (150),
	Telefonedecontato varchar (20),
	EmailCorporativo varchar(150)

--Constraints
	Primary Key (Id_editora) 
);

Insert into tbl_editora (Id_editora, NomeEmpresa, Telefonedecontato, EmailCorporativo) VALUES
    (22, 'Leiamais', '98765-4321', 'Leiamais@gmail.com'),
    (75, 'Leiamenos', '12345-6789', 'Leiamenos@gmail.com'),
    (42, 'Leiamaisoumenos', '56432-1978', 'Leiamaisemenos@gmail.com'),
    (67, 'Vamosler', '57326-1948', 'Vamosler@gmail.com'),
    (13, 'Queroler', '4002-8922', 'Queroler@gmail.com'),
    (88, 'Sempreler', '3322-1144', 'Sempreler@gmail.com'),
    (31, 'Novohorizonte', '91234-5678', 'novohorizonte@gmail.com'),
    (54, 'Paginaaberta', '98888-7777', 'paginaaberta@gmail.com'),
    (90, 'Livrariando', '3221-5566', 'livrariando@gmail.com'),
    (19, 'Estantedigital', '97766-5544', 'estantedigital@gmail.com');

Select * from tbl_editora;



--tbl livro

CREATE table Livro(

	ISBN varchar(20),
	Titulo varchar(200) Not null,
	PrecoVendaAtual decimal(10,2),
	QntNoEstoque int,
	AnoDePublicacao int,
	Id_editora int,

--Constraints 

	Primary Key(ISBN),
	Check (QntNoEstoque > 0),
	FOREIGN KEY (Id_editora) references tbl_editora(Id_editora),
);


	Insert into Livro(ISBN, Titulo, PrecoVendaAtual, QntNoEstoque, AnoDePublicacao, Id_editora)VALUES
	('978-85-359-0277-8', 'Diário de um banana', 227.90, 27, 2010, 22),
	('984-62-423-1022-7', 'Turma da Mônica Jovem', 65.52, 45, 2015, 75),
	('754-35-429-3456-2', 'O Pequeno Príncipe', 45.96, 62, 2010, 42),
	('845-36-552-3597-4', 'Vivi Viravento', 47.72, 36, 2020, 67),
	('978-85-740-6045-3', 'O Menino Maluquinho', 63.21, 50, 2010, 13),
	('978-85-010-1234-5', 'Dom Casmurro', 39.90, 40, 1899, 88),
	('978-85-209-2345-6', 'Memórias Póstumas de Brás Cubas', 42.50, 30, 1881, 31),
	('978-85-359-1111-1', 'A Hora da Estrela', 35.00, 25, 1977, 54),
	('978-85-254-2222-2', 'Capitões da Areia', 48.90, 55, 1937, 90),
	('978-85-030-3333-3', 'Vidas Secas', 44.90, 18, 1938, 19),
	('978-85-716-4444-4', 'Quarto de Despejo', 52.00, 33, 1960, 22),
	('978-85-359-5555-5', 'O Cortiço', 38.00, 42, 1890, 75),
	('978-85-220-6666-6', 'Macunaíma', 41.20, 20, 1928, 42),
	('978-85-011-7777-7', 'Grande Sertão: Veredas', 89.90, 15, 1956, 67),
	('978-85-333-8888-8', 'Iracema', 29.90, 60, 1865, 13),
	('978-85-250-9999-9', 'O Guarani', 32.50, 50, 1857, 88),
	('978-85-723-0101-1', 'Triste Fim de Policarpo Quaresma', 36.40, 28, 1915, 31),
	('978-85-359-0202-2', 'Sagarana', 55.00, 22, 1946, 54),
	('978-85-010-0303-3', 'Helena', 27.90, 45, 1876, 90),
	('978-85-359-0404-4', 'Senhora', 34.90, 38, 1875, 19),
	('978-85-209-0505-5', 'A Moreninha', 31.00, 50, 1844, 22),
	('978-85-359-0606-6', 'Memórias de um Sargento de Milícias', 39.90, 35, 1854, 75),
	('978-85-740-0707-7', 'Clara dos Vanzeler', 45.00, 19, 1948, 42),
	('978-85-359-0808-8', 'Cem Anos de Solidão', 79.90, 65, 1967, 67),
	('978-85-254-0909-9', 'O Alquimista', 49.90, 80, 1988, 13),
	('978-85-010-1010-0', 'Ensaio sobre a Cegueira', 69.90, 40, 1995, 88),
	('978-85-359-1212-1', 'A Revolução dos Bichos', 42.90, 75, 1945, 31),
	('978-85-209-1313-2', '1984', 54.90, 85, 1949, 54),
	('978-85-359-1414-3', 'O Senhor dos Anéis: A Sociedade do Anel', 89.90, 30, 1954, 90),
	('978-85-740-1515-4', 'Harry Potter e a Pedra Filosofal', 59.90, 90, 1997, 19);

Select * from Livro;


--Autor

CREATE TABLE tbl_autor(

	Id_autor int,
	NomeCompleto Varchar(150),
	Nacionalidade Varchar(80),
	DataNascimento Date,

--Constraints
	Primary Key (Id_autor)
);

Insert into tbl_autor(Id_autor, NomeCompleto, Nacionalidade, DataNascimento) Values

	(164, 'Maurício de Sousa', 'Brasileiro', '27/10/1935'),
	(165, 'Monteiro Lobato', 'Brasileiro', '18/04/1882'),
	(166, 'Machado de Assis', 'Brasileiro', '21/06/1839'),
	(167, 'Clarice Lispector', 'Ucraniana', '10/12/1920'),
	(168, 'J. K. Rowling', 'Britânica', '31/07/1965'),
	(169, 'Jorge Amado', 'Brasileiro', '10/08/1912'),
	(170, 'Carlos Drummond de Andrade', 'Brasileiro', '31/10/1902'),
	(171, 'Cecília Meireles', 'Brasileira', '07/11/1901'),
	(172, 'Graciliano Ramos', 'Brasileiro', '27/10/1892'),
	(173, 'José de Alencar', 'Brasileiro', '01/05/1829'),
	(174, 'Lima Barreto', 'Brasileiro', '13/05/1881'),
	(175, 'Guimarães Rosa', 'Brasileiro', '27/06/1908'),
	(176, 'Rachel de Queiroz', 'Brasileira', '17/11/1910'),
	(177, 'Lygia Fagundes Telles', 'Brasileira', '19/04/1923'),
	(178, 'Mário de Andrade', 'Brasileiro', '09/10/1893'),
	(179, 'Oswald de Andrade', 'Brasileiro', '11/01/1890'),
	(180, 'Manuel Bandeira', 'Brasileiro', '19/04/1886'),
	(181, 'Vinícius de Moraes', 'Brasileiro', '19/10/1913'),
	(182, 'Conceição Evaristo', 'Brasileira', '29/11/1946'),
	(183, 'Paulo Coelho', 'Brasileiro', '24/08/1947'),
	(184, 'Rubem Fonseca', 'Brasileiro', '11/05/1925'),
	(185, 'Luis Fernando Verissimo', 'Brasileiro', '26/09/1936'),
	(186, 'Érico Veríssimo', 'Brasileiro', '17/12/1905'),
	(187, 'Adélia Prado', 'Brasileira', '13/12/1935'),
	(188, 'Ariano Suassuna', 'Brasileiro', '16/06/1927'),
	(189, 'Augusto dos Anjos', 'Brasileiro', '20/04/1884'),
	(190, 'Aluísio Azevedo', 'Brasileiro', '14/04/1857'),
	(191, 'Cruz e Sousa', 'Brasileiro', '24/11/1861'),
	(192, 'Gonçalves Dias', 'Brasileiro', '10/08/1823'),
	(193, 'Castro Alves', 'Brasileiro', '14/03/1847'),
	(194, 'Carolina Maria de Jesus', 'Brasileira', '14/03/1914'),
	(195, 'Stephen King', 'Americano', '21/09/1947'),
	(196, 'George Orwell', 'Britânico', '25/06/1903'),
	(197, 'J. R. R. Tolkien', 'Britânico', '03/01/1892'),
	(198, 'Agatha Christie', 'Britânica', '15/09/1890'),
	(199, 'William Shakespeare', 'Britânico', '26/04/1564'),
	(200, 'Jane Austen', 'Britânica', '16/12/1775'),
	(201, 'Gabriel García Márquez', 'Colombiano', '06/03/1927'),
	(202, 'Isabel Allende', 'Chilena', '02/08/1942'),
	(203, 'Miguel de Cervantes', 'Espanhol', '29/09/1547'),
	(204, 'Dante Alighieri', 'Italiano', '29/05/1265'),
	(205, 'Fyodor Dostoevsky', 'Russo', '11/11/1821'),
	(206, 'Leo Tolstoy', 'Russo', '09/09/1828'),
	(207, 'Victor Hugo', 'Francês', '26/02/1802'),
	(208, 'Albert Camus', 'Francês', '07/11/1913'),
	(209, 'Jean-Paul Sartre', 'Francês', '21/06/1905'),
	(210, 'Friedrich Nietzsche', 'Alemão', '15/10/1844'),
	(211, 'Franz Kafka', 'Tcheco', '03/07/1883'),
	(212, 'H. P. Lovecraft', 'Americano', '20/08/1890'),
	(213, 'Edgar Allan Poe', 'Americano', '19/01/1809');

Select * from tbl_autor;


--Cliente

CREATE table tbl_cliente(

	Id_Cliente int,
	NomeCompleto Varchar (150),
	Email Varchar(150),
	CPF Varchar (14),
	DataCadastro DATE

--Constraints

	Primary Key (Id_Cliente),
	Unique (Email, CPF)
);

Insert into tbl_cliente(Id_Cliente, NomeCompleto, Email, CPF, DataCadastro) Values
	(0071, 'Edinaldo Pereira', 'Edinaldão@gmail.com', '123.321.456-50', '22/10/2022'),
	(0073, 'Carlos Eduardo Silva', 'carlos.silva@hotmail.com', '789.456.123-99', '10/07/2023'),
	(0074, 'Beatriz Oliveira', 'bia.oli@outlook.com', '321.654.987-11', '05/11/2023'),
	(0075, 'Marcos Vinícius Santos', 'marcos.v@gmail.com', '654.321.789-22', '18/01/2024'),
	(0076, 'Juliana Almeida', 'ju.almeida@yahoo.com', '159.753.486-33', '30/09/2024'),
	(0077, 'Lucas Gabriel Souza', 'lucas.gabriel@gmail.com', '456.789.123-44', '15/02/2025'),
	(0078, 'Mariana Costa Lima', 'mariana.lima@outlook.com', '741.852.963-55', '20/04/2025'),
	(0079, 'Gabriel Henrique Rocha', 'gabi.rocha@hotmail.com', '369.258.147-66', '12/06/2025'),
	(0080, 'Camila Rodrigues', 'camila.rodrigues@gmail.com', '951.753.357-77', '08/09/2025'),
	(0081, 'Rafael Martins', 'rafael.martins@yahoo.com', '852.963.741-88', '19/11/2025');

Select * from tbl_cliente;



--Pedido

CREATE table tbl_pedido(

	Id_Pedido int,
	DataHora DateTime,
	ValorTotal Decimal(10,2),
	Id_Cliente int,

--Constraints

	Primary Key (Id_Pedido),
	Foreign key (Id_Cliente) references tbl_cliente(Id_Cliente)
);

Insert Into tbl_pedido(Id_Pedido, DataHora, ValorTotal, Id_Cliente)VALUES
	(1562, '22-10-2026 13:22', 52.20, 0071),
	(1563, '11-12-2025 14:42', 216.50, 0073),
	(1564, '09-07-2025 15:03', 567.49, 0074),
	(1565, '05-04-2026 15:14', 42.67, 0075),
	(1566, '29-11-2026 17:12', 37.95, 0076),
	(1567, '10-01-2026 10:15', 129.90, 0077),
	(1568, '14-02-2026 16:40', 89.50, 0078),
	(1569, '03-03-2026 11:20', 245.00, 0079),
	(1570, '18-04-2026 09:55', 64.30, 0080),
	(1571, '25-05-2026 14:10', 150.80, 0081);

Select * from tbl_pedido;

--Item Pedido

CREATE table tbl_ItemPedido(

	Id_ItemPedido int,
	Quantidade int,
	PreçoUnitarioVenda decimal(10,2),
	Id_pedido int,
	ISBN Varchar(20),

--Constraints
	Primary key(Id_ItemPedido),
	Foreign key (Id_pedido) references tbl_pedido(Id_pedido),
	Foreign key (ISBN) references Livro(ISBN)
);

Insert into tbl_ItemPedido(Id_ItemPedido, Quantidade, PreçoUnitarioVenda, Id_pedido, ISBN)values
	(50002, 2,  50.20, 1562, '978-85-359-0277-8'),
	(60014, 4, 103.40, 1563, '984-62-423-1022-7'),
	(42626, 7, 140.62, 1564, '754-35-429-3456-2'),
	(67042, 6, 160.37, 1565, '845-36-552-3597-4'),
	(78213, 3, 75.50, 1566, '978-85-740-6045-3');

Select * from tbl_ItemPedido;



--Livro Autor

CREATE table tbl_livro_autor(

	ISBN Varchar (20),
	Id_autor int,

--constraints
	Primary key (ISBN, Id_autor),
	Foreign key (ISBN) references Livro(ISBN),
	Foreign key (Id_autor) references tbl_autor(Id_autor)
);

Insert into tbl_livro_autor(ISBN,Id_autor)values

	('978-85-359-0277-8',164),
	('984-62-423-1022-7',165),
	('754-35-429-3456-2',166),
	('845-36-552-3597-4',167),
	('978-85-740-6045-3',168);

Select * from tbl_livro_autor;