SELECT produtos.nome_produto, SUM(vendas.quantidade) AS totalvendido
FROM produtos
JOIN vendas ON produtos.id = vendas.produto_id
GROUP BY produtos.nome_produto
ORDER BY totalvendido DESC;