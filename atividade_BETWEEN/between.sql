/*1. Consulte todos os campos (atributos) da entidade produto onde
contemplem todo o mês de Março de 2024.
*/
SELECT * FROM produto 
WHERE data_cadastro 
BETWEEN "2024-03-01" 
AND "2024-03-31";

/*2. Consulte o nome do produto, marca, estoque e data de cadastro onde os produtos 
tenham sido cadastrado nos meses de Janeiro, Fevereiro e Março de 2024.
*/
SELECT nome_produto, marca, estoque, data_cadastro 
FROM produto
WHERE data_cadastro 
BETWEEN "2024-01-01"
AND "2024-03-31";

/*3. Consulte todos os campos (atributos) da tabela cliente para clientes
cadastrados no mês de Janeiro de 2023
*/
SELECT * FROM cliente 
WHERE data_cadastro
BETWEEN "2023-01-01"
AND "2023-01-31";

/*4. Consulte o nome, o email, a cidade, estado e data de cadastro para os
clientes cadastrados na primeira quinzena de junho de 2023.
*/
SELECT nome_cliente, email, cidade, estado, data_cadastro 
FROM cliente
WHERE data_cadastro 
BETWEEN "2023-06-01"
AND "2023-06-15";

/*5. Consulte todos os campos (atributos) da entidade venda onde a data 
de venda contemple todo o mÊs de maio de 2025.
*/
SELECT * FROM venda 
WHERE data_venda
BETWEEN "2025-05-01"
AND "2025-05-31";

/*6. Consulte o nome do cliente, data da venda, o preço e a forma de 
pagamento para as vendas realizadas de 24-12-2025 até 15-01-2026 do maior 
preço para o menor.
*/
SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda,
venda.forma_pagamento
FROM cliente INNER JOIN venda ON cliente.id_cliente = venda.id_cliente
WHERE data_venda 
BETWEEN "2025-12-24"
AND "2026-01-15" ORDER BY preco_unitario_venda DESC;

/*7. Consulte o nome do cliente, email, nome do produto, marca, categoria, forma
de pagamento, data da venda e status da venda da maior venda para a menor (DESC) onde o
status seja Cancelada ou Concluída contemplando todo o período de venda do mês de 
Dezembro de 2025.
*/
SELECT cliente.nome_cliente, cliente.email, produto.nome_produto, produto.marca, 
produto.categoria, venda.forma_pagamento, venda.data_venda, venda.status_venda
FROM venda INNER JOIN cliente ON cliente.id_cliente = venda.id_cliente 
INNER JOIN produto ON produto.id_produto = venda.id_produto 
WHERE venda.status_venda IN ("Cancelada", "Concluida") 
AND venda.data_venda BETWEEN "2025-12-01" AND "2025-12-31"
ORDER BY venda.preco_unitario_venda DESC;
