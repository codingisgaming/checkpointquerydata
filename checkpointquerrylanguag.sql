2-SELECT c.customer_Name,
SUM(o.quantity * p.Price)
FROM customer c
JOIN Orders o ON c.Customer_id = o.Customer_id
JOIN Product p ON o.Product_id = p.Produc_id
WHERE p.category = 'widget'
GROUP BY c.customer_Name
HAVING SUM(o.quantity) >= 1;
3-SELECT c.customer_Name,
       SUM(o.quantity * p.Price) 
FROM customer c
JOIN Orders o ON c.Customer_id = o.Customer_id
JOIN Product p ON o.Product_id = p.Produc_id
WHERE p.category = 'gadget'
GROUP BY c.customer_Name
HAVING SUM(o.quantity) >= 1;
4-SELECT c.customer_Name,
       SUM(o.quantity * p.Price)
FROM customer c
JOIN Orders o ON c.Customer_id = o.Customer_id
JOIN Product p ON o.Product_id = p.Produc_id
WHERE p.category = 'doohickey'
GROUP BY c.customer_Name
HAVING SUM(o.quantity) >= 1;
5-SELECT c.customer_Name,
       SUM(CASE WHEN p.category = 'widget' OR p.category = 'gadget'  
       SUM(o.quantity * p.Price) 
FROM customer c
JOIN Orders o ON c.Customer_id = o.Customer_id
JOIN Product p ON o.Product_id = p.Produc_id
WHERE p.category IN ('widget', 'gadget')
GROUP BY c.customer_Name;
6-SELECT p.product_name,
       SUM(o.quantity) 
FROM Product p
JOIN Orders o ON p.Produc_id = o.Product_id
GROUP BY p.product_name
HAVING SUM(o.quantity) >= 1;
8-SELECT p.product_name,
       SUM(o.quantity) 
FROM Product p
JOIN Orders o ON p.Produc_id = o.Product_id
GROUP BY p.product_name
ORDER BY SUM(o.quantity) DESC;
