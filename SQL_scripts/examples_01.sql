
-- examples_01.sql

-- SELECT * from user_tables;
-- DESCRIBE P;

-- codice di tutti i prodotti
SELECT CodP FROM P;

-- codice dei prodotti forniti da almeno un fornitore
SELECT CodP FROM FP;

-- codice dei prodotti diversi forniti da almeno un fornitore
SELECT DISTINCT CodP FROM FP;

-- codice dei fornitori di Milano
SELECT CodF FROM F WHERE Sede = 'Milano';

-- codice e il rating dei fornitori che non hanno sede a Milano
SELECT CodF, Rating FROM F WHERE Sede <> 'Milano';

-- codice dei fornitori di Milano con un rating superiore a 2
SELECT CodF FROM F WHERE Sede = 'Milano' AND Rating > 2;

-- codice e il rating dei fornitori di Milano o di Torino
SELECT CodF, Rating FROM F WHERE Sede = 'Milano' OR Sede = 'Torino';

-- codice e nome dei prodotti con peso maggiore di 44
SELECT CodP, NomeP FROM P WHERE Peso > 44;
SELECT CodP, NomeP, Peso FROM P WHERE Peso > 44 OR Peso IS NULL;

-- codice dei prodotti e loro peso, in ordine decrescente di peso
SELECT CodP, Peso FROM P ORDER BY Peso DESC;
SELECT CodP, Peso FROM P ORDER BY Peso DESC NULLS LAST;

-- tutte le informazioni, ordine crescente di nome e decrescente di peso
SELECT CodP, NomeP, Colore, Peso, Magazzino FROM P ORDER BY NomeP, Peso DESC;
SELECT * FROM P ORDER BY NomeP, Peso DESC;

-- nome dei fornitori che forniscono il prodotto P2
SELECT NomeF FROM F, FP WHERE F.CodF = FP.CodF AND CodP = 'P2';

-- nome dei fornitori che forniscono almeno un prodotto rosso
SELECT NomeF FROM F, FP, P
WHERE F.CodF = FP.CodF AND P.CodP = FP.CodP
AND Colore = 'Rosso';

SELECT DISTINCT NomeF FROM F, FP, P
WHERE F.CodF = FP.CodF AND P.CodP = FP.CodP
AND Colore = 'Rosso';

-- coppie di fornitori tali che entrambi abbiano sede nella stessa città
SELECT F1.CodF, F2.CodF
FROM F F1, F F2
WHERE F1.Sede = F2.Sede;

SELECT F1.CodF, F2.CodF
FROM F F1, F F2
WHERE F1.Sede = F2.Sede
AND F1.CodF <> F2.CodF;

SELECT F1.CodF, F2.CodF
FROM F F1, F F2
WHERE F1.Sede = F2.Sede
AND F1.CodF < F2.CodF;

-- nome dei fornitori che forniscono almeno un prodotto rosso
SELECT NomeF
FROM P INNER JOIN FP ON P.CodP = FP.CodP
INNER JOIN F ON F.CodF = FP.CodF
WHERE P.Colore = 'Rosso';

-- codice e nome dei fornitori, insieme al codice dei prodotti forniti, 
-- riportando anche i fornitori che non hanno forniture
SELECT F.CodF, NomeF, CodP
FROM F LEFT OUTER JOIN FP
ON F.CodF = FP.CodF;

