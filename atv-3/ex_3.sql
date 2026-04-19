# Etapa 3. Testar ROLLBACK
START TRANSACTION;

UPDATE contas
SET saldo = saldo - 50
WHERE id = 2;

UPDATE contas
SET saldo = saldo + 50
WHERE id = 3;

ROLLBACK;

SELECT * FROM contas;

# Por que os valores não foram alterados ao final?
# - Por causa que rollback cancela as operações feitas na transação

# Em quais situações reais o uso de ROLLBACK seria essencial?
# Em regras de negocios, onde pode existir valores que não podem existir em certas transações/operações
