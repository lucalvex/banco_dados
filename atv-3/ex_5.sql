# Etapa 5. Testar múltiplas operações na mesma transação
START TRANSACTION;

UPDATE contas
SET saldo = saldo - 100
WHERE id = 4;

UPDATE contas
SET saldo = saldo + 60
WHERE id = 1;

UPDATE contas
SET saldo = saldo + 40
WHERE id = 2;

COMMIT;

SELECT * FROM contas;

# Qual conta foi debitada e quais contas foram creditadas?
# - Foi debitado do bruno, e ana. Creditado foi da Daniela 

# Por que esse conjunto de operações também deve ser tratado como uma única transação?
# - Porque eles manipulam a mesma tabela (conta)