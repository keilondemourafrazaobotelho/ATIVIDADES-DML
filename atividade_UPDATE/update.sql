/*ATIVIDADES UPDATE : DML */

/*Instrução 01: */
UPDATE cliente
SET email = "email@email.com.br"
WHERE estado IN("SP", "RJ");

/*Instrução 02:*/
UPDATE cliente 
SET data_cadastro ="2026-01-01"
WHERE cidade ="Manaus";

/*Instrução 03:*/
UPDATE cliente
SET nome_cliente ="Michael Jackson"
WHERE id_cliente = 10;

/*Instrução 04:*/
UPDATE produto
SET nome_produto ="Notebook Lenovo IdeaPad 7"
WHERE id_produto = 1;

/*Instrução 05:*/
UPDATE produto 
SET preco_unitario ="4999.99" 
WHERE marca = "DELL" 
AND categoria ="Notebook";

/*Instrução 06:*/
UPDATE venda
SET desconto_percentual ="0.01"
WHERE quantidade >= 2;