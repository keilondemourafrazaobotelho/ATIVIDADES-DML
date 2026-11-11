/* 1. Consulte todos os campos (atributos) da entidade 
produto onde o nome do produto comece com a letra "D".
*/
SELECT * FROM produto 
WHERE nome_produto LIKE "D%";

/*2. Consulte o nome do produto, marca e estoque onde a 
marca termine com a letra "E".
*/
SELECT nome_produto, marca, estoque 
FROM produto 
WHERE marca LIKE "%E";

/*3. Consulte o nome do produto, marca e preço uniário 
onde o nome do produto contenha a palavra "Gamer".
*/
SELECT nome_produto, marca, preco_unitario
FROM produto
WHERE nome_produto LIKE "%Gamer%";

/*4. Consulte todos os campos (atributos) da entendidade 
cliente onde o nome do cliente contenha o sobrenome "Barbosa"
*/
SELECT * FROM cliente 
WHERE nome_cliente LIKE "%Barbosa%";

/*5. Consulte o nome do cliente, data da venda, o preço unitário e a
forma de pagamento onde o nome do cliente comece com a letra "C".
*/
SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, 
venda.forma_pagamento FROM venda INNER JOIN cliente ON venda.id_cliente = cliente.id_cliente
WHERE cliente.nome_cliente LIKE "C%";

/*6. Consulte nome do produto, preço, ID da venda e forma de pagamento
onde a forma de pagamento seja PIX ou Boleto onde o nome do produto
contenha a palavra "Polegada".
*/
SELECT produto.nome_produto, produto.preco_unitario, venda.id_venda, venda.forma_pagamento
FROM venda INNER JOIN produto ON venda.id_produto = produto.id_produto
WHERE venda.forma_pagamento IN ("Pix", "Boleto")
AND produto.nome_produto LIKE "%Polegadas";

/*7. Consulte o nome do produto, nome do cliente, desconto e forma de pagamento em ordem 
alfabética (crescente) por status da venda onde o nome do produto contenha "Placa" ou "Notebook"
ou nome do cliente contenha o nome "Ana"
*/
SELECT produto.nome_produto,cliente.nome_cliente,venda.desconto_percentual,venda.forma_pagamento
FROM venda INNER JOIN produto  ON venda.id_produto = produto.id_produto
INNER JOIN cliente ON venda.id_cliente = cliente.id_cliente
WHERE produto.nome_produto LIKE "%Placa%" OR produto.nome_produto LIKE "%Notebook%" 
OR cliente.nome_cliente LIKE "%Ana%" ORDER BY venda.status_venda ASC;
