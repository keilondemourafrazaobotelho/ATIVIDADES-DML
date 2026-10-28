/*ATIVIDADE DE CADASTRO : DML */

-- Instrução 01 --
INSERT INTO cliente (nome_cliente, email, cidade, estado, data_cadastro) 
VALUES ('Rubervaldo Sesiano', 'ruber.sesi@gmail.com', 'Jaguariuna', 'Sao Paulo', NOW());

-- Instrução 02 --
INSERT INTO produto (nome_produto, categoria, marca, preco_unitario, estoque, data_cadastro) 
VALUES ('MousePad 5POL', 'Acessórios', 'Lumix', 59.98, 35, CURDATE());

-- Instrução 03 --
INSERT INTO venda (id_cliente, id_produto, data_venda, quantidade, desconto_percentual, forma_pagamento, status_venda) 
VALUES (105, 23, '2026-10-21', 10, 1.33, 'PIX', 'Concluída');
