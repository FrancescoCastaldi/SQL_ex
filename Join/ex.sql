SELECT impiegati.nome AS nome_impiegato, dipartimenti.nome AS nome_dipartimento
FROM impiegati
LEFT JOIN dipartimenti ON impiegati.id_dipartimento = dipartimenti.id;

-- Output
nome_impiegato | nome_dipartimento
--------------+------------------------
John Doe       | Marketing
Jane Smith     | IT

-- Comment: The LEFT JOIN keyword returns all records from the left table (impiegati)


----------------------------------------------------------------------------------------

SELECT clienti.nome AS nome_cliente, spedizione.indirizzo AS indirizzo_spedizione
FROM clienti
LEFT JOIN spedizione ON clienti.id = spedizione.id_cliente;

-- Output
nome_cliente | indirizzo_spedizione
--------------+------------------------
John Doe       | 123 Main St

-- Comment: The LEFT JOIN keyword returns all records from the left table (clienti)


----------------------------------------------------------------------------------------

SELECT libri.nome AS nome_libro, autori.nome AS nome_autore
FROM libri
LEFT JOIN autori ON libri.id_autore = autori.id;

-- Output
nome_libro | nome_autore
--------------+------------------------
Book 1      | John Doe
Book 2      | Jane Smith

-- Comment: The LEFT JOIN keyword returns all records from the left table (libri)


----------------------------------------------------------------------------------------

SELECT fornitori.nome AS nome_fornitore, prodotti.nome AS nome_prodotto
FROM fornitori
LEFT JOIN prodotti ON fornitori.id = prodotti.id_fornitore;

-- Output
nome_fornitore | nome_prodotto
--------------+------------------------
Supplier 1    | Product 1

-- Comment: The LEFT JOIN keyword returns all records from the left table (fornitori)

----------------------------------------------------------------------------------------
SELECT products.name AS product_name, suppliers.name AS supplier_name
FROM products
RIGHT JOIN suppliers ON products.supplier_id = suppliers.id;

-- Output
product_name | supplier_name
--------------+------------------------
Product 1    | Supplier 1
Product 2    | Supplier 1

-- Comment: The RIGHT JOIN keyword returns all records from the right table (suppliers)

----------------------------------------------------------------------------------------

SELECT sales.sale_id, products.name AS product_name
FROM sales
RIGHT JOIN products ON sales.product_id = products.id;

-- Output
sale_id | product_name
--------+--------------
1       | Product 1
2       | Product 2

-- Comment: The RIGHT JOIN keyword returns all records from the right table (products)