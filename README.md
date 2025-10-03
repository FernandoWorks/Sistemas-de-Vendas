Este projeto implementa um banco de dados MySQL chamado Sistema de Vendas, voltado para o gerenciamento de vendas em uma loja.

 Estrutura do Banco

O banco é composto pelas seguintes tabelas:

* usuarios: armazena informações dos clientes, incluindo nome, e-mail, telefone e endereço.
* produtos: contém dados sobre os produtos disponíveis, como nome, preço e estoque.
* vendas: registra as vendas realizadas, vinculando o cliente, data da venda e valor total.
* itens_venda: detalha os produtos de cada venda, incluindo quantidade e preço unitário.
* pagamentos: controla as formas de pagamento utilizadas em cada venda e os valores pagos.

 Relacionamentos

* Cada venda está vinculada a um cliente (**usuarios**).
* A tabela itens_venda conecta uma venda a vários produtos.
* A tabela pagamentos está ligada a uma venda específica.

 Exemplo de Dados Inseridos

* Usuários cadastrados: Ana Souza, Carlos Silva e Mariana Lima.
* Produtos cadastrados: Notebook Dell, Mouse Gamer, Teclado Mecânico, entre outros.
* Exemplo de venda: Ana Souza comprou um conjunto de produtos totalizando R$ 3.840,00, pago via cartão de crédito.


Finalidade

Esse banco de dados pode ser utilizado como base para sistemas de gestão de vendas, controle de estoque e relatórios financeiros em pequenas ou médias empresas.
