/*ATIVIDADES DELETE : DML */

/*Instrução 01: */
DELETE FROM cliente 
WHERE id_cliente = 5;

/*Instrução 02:*/
DELETE FROM cliente 
WHERE estado = "SC";

/*Instrução 03:*/
DELETE FROM produto
WHERE marca = "LG";

/*Instrução 04:*/
DELETE FROM produto
WHERE id_produto IN (3, 5, 10);

/*Instrução 05:*/
DELETE FROM venda 
WHERE desconto_percentual = 0;

/*Instrução 06:*/
DELETE FROM venda 
WHERE status_venda = "cancelada";