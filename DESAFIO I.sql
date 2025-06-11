-- Desafio 1: 
SELECT
	Id, CPF, Primeiro_Nome, Idade
FROM
	cadastro
;
    
-- Desafio 2
SELECT
	Id, CPF, Primeiro_Nome, Idade
FROM
	cadastro
ORDER BY Idade ASC
;

-- Desafio 3
SELECT TOP(20)
	Id, CPF, Primeiro_Nome, Idade
FROM
	cadastro
;

-- Desafio 4
DELETE FROM cadastro
WHERE Id = 100
;

-- Desafio 5
SELECT
	AVG(Idade) AS  'Idade_Media'
FROM
	cadastro
;

-- Desafio 6
SELECT
	COUNT(*) AS 'Maior_de_Idade'
FROM
	cadastro
WHERE Idade >= 18
;

-- Desafio 7
SELECT
	COUNT(*) AS 'Qtd_Clientes_30_e_40'
FROM
	cadastro
WHERE
	Idade BETWEEN 30 AND 40
;

-- Desafio 8
SELECT
	COUNT(*) AS 'Qtd_Clientes',
	CASE
		WHEN Idade < 18 THEN 'menores de 18'
        WHEN Idade <=65 THEN '18 a 65'
        WHEN Idade >65 THEN 'maiores de 65'
        ELSE Null
	END AS 'Faixa_Etaria'
FROM cadastro
GROUP BY Faixa_Etaria
;

-- Desafio 9
SELECT 
	Id, Primeiro_Nome
FROM
	cadastro
ORDER BY Id ASC
LIMIT 10
;

-- Desafio 10
SELECT
	Id, Primeiro_Nome
FROM
	cadastro
WHERE Idade = 0
;