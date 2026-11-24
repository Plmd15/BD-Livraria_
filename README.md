# 📚 Sistema de Gestão de Livraria (Livraria_DB)

Uma aplicação robusta de banco de dados relacional desenvolvida em **SQL Server** para gerenciar o ecossistema de uma livraria, englobando controle de estoque, editoras, autores, clientes, pedidos e itens associados.

---

## 🚀 O que a Aplicação Apresenta

O sistema é estruturado em tabelas relacionais integradas e restrições de integridade rigorosas:

1. **Gestão de Editoras e Catálogo:**
   * Tabela `tbl_editora` para armazenar informações corporativas e de contato das editoras parceiras.
   * Tabela `Livro` para gerenciar o acervo bibliográfico, controlando ISBN, títulos, preços de venda atuais, ano de publicação e o estoque mínimo (`CHECK (QntNoEstoque > 0)`).

2. **Autores e Relacionamentos N:N:**
   * Tabela `tbl_autor` para gerenciar os dados biográficos dos escritores.
   * Tabela associativa `tbl_livro_autor` que conecta livros e autores de forma flexível utilizando chave primária composta.

3. **Clientes, Pedidos e Transações:**
   * Tabela `tbl_cliente` com restrições de unicidade (`UNIQUE`) para CPF e e-mail.
   * Tabela `tbl_pedido` para registro de transações vinculadas aos clientes e carimbos de data/hora (`DATETIME`).
   * Tabela `tbl_ItemPedido` para detalhar unitariamente os livros comprados, quantidades e preços praticados por pedido.

---

## 🎨 Tecnologias e Conceitos Aplicados

- **SQL Server (T-SQL):** Criação de banco de dados relacional, definição de tipos de dados (`INT`, `VARCHAR`, `DECIMAL`, `DATETIME`, `DATE`).
- **Integridade Referencial e Constraints:**
  * Definição de Chaves Primárias (`PRIMARY KEY`) em todas as entidades.
  * Implementação de Chaves Estrangeiras (`FOREIGN KEY`) para mapeamento de cardinalidades (1:N e N:N).
  * Regras de validação com restrições `CHECK` e `UNIQUE`.
- **Manipulação de Dados (DML):** Inserções estruturadas (`INSERT INTO`) e consultas de validação (`SELECT * FROM`).

---

## 📂 Estrutura do Projeto

```text
📁 livraria-db/
├── 📄 Livraria.sql          # Script principal de criação do banco, tabelas e inserção de dados
├── 📄 Modelo_Logico.docx    # Documentação de modelagem lógica e mapeamento de relacionamentos
└── ⚙️ README.md             # Documentação técnica e guia de utilização do repositório
