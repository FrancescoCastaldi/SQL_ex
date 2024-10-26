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

----------------------------------------------------------------------------------------

-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday)


select today.id
from Weather yesterday
cross join Weather today

    where DATEDIFF(today.recordDate, yesterday.recordDate)=1 AND today.temperature > yesterday.temperature




--Input
Weather =
| id | recordDate | temperature |
| -- | ---------- | ----------- |
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |

--Output
| id |
| -- |
| 2  |
| 4  |

--Comment: For 2015-01-02, the temperature is higher than 2015-01-01. For 2015-01-04, the temperature is higher than 2015-01-03.

----------------------------------------------------------------------------------------
Write a solution to find managers with at least five direct reports.

Return the result table in any order.

select m.name
from Employee as e
inner join employee as m
on e.managerId=m.id
group by e.managerId
having count(e.id)>=5

-- Input: 
Employee table:
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+
-- Output: 
+------+
| name |
+------+
| John |
+------+