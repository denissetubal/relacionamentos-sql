
-- Consultar os 5 clientes com maior número de pedidos
SELECT c.Nome, COUNT(p.ID_Pedido) AS Total_Pedidos
FROM Clientes c
JOIN Pedidos p ON c.ID_Cliente = p.ID_Cliente
GROUP BY c.Nome
ORDER BY Total_Pedidos DESC
LIMIT 5;

-- Consultar os 5 produtos mais vendidos por quantidade
SELECT pr.Nome_Produto, SUM(ip.Quantidade) AS Total_Quantidade
FROM Itens_Pedido ip
JOIN Produtos pr ON ip.ID_Produto = pr.ID_Produto
GROUP BY pr.Nome_Produto
ORDER BY Total_Quantidade DESC
LIMIT 5;

-- Consultar o total de vendas por mês
SELECT DATE_FORMAT(p.Data_Pedido, '%Y-%m') AS Mes, SUM(p.Valor_Total) AS Total_Vendas
FROM Pedidos p
GROUP BY Mes
ORDER BY Mes;
