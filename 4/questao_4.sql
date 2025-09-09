CREATE VIEW vendas_diarias AS
SELECT vendas.data_venda, produtos.nome_produto, SUM(produtos.preco * vendas.quantidade) AS faturamento_total
FROM vendas
JOIN produtos ON vendas.produto_id = produtos.id
GROUP BY vendas.data_venda, produtos.nome_produto
ORDER BY vendas.data_venda DESC, faturamento_total DESC;