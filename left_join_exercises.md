
# Esercizi risolti con LEFT JOIN
###Crediti esercizi: https://codegrind.it/esercizi/sql
### 1. Ottieni tutti gli impiegati e i rispettivi dipartimenti in cui lavorano, inclusi gli impiegati senza dipartimento.

```sql
SELECT impiegati.nome AS nome_impiegato, dipartimenti.nome AS nome_dipartimento
FROM impiegati
LEFT JOIN dipartimenti ON impiegati.id_dipartimento = dipartimenti.id;
```

---

### 2. Ottieni tutti i clienti e gli indirizzi di spedizione corrispondenti, inclusi i clienti senza indirizzo di spedizione.

```sql
SELECT clienti.nome AS nome_cliente, spedizione.indirizzo AS indirizzo_spedizione
FROM clienti
LEFT JOIN spedizione ON clienti.id = spedizione.id_cliente;
```

---

### 3. Ottieni tutti i libri e gli autori corrispondenti, inclusi i libri senza autore.

```sql
SELECT libri.nome AS nome_libro, autori.nome AS nome_autore
FROM libri
LEFT JOIN autori ON libri.id_autore = autori.id;
```

---

### 4. Ottieni tutti i fornitori e i prodotti che forniscono, inclusi i fornitori senza prodotti.

```sql
SELECT fornitori.nome AS nome_fornitore, prodotti.nome AS nome_prodotto
FROM fornitori
LEFT JOIN prodotti ON fornitori.id = prodotti.id_fornitore;
```

---
