# Etapa 11. Simular falha antes do registro da movimentação
START TRANSACTION;

UPDATE contas
SET saldo = saldo - 80
WHERE id = 1;

UPDATE contas
SET saldo = saldo + 80
WHERE id = 4;

ROLLBACK;

SELECT * FROM contas;
SELECT * FROM movimentacoes;

# O que o ROLLBACK garantiu nesse cenário?
# - Garantiu que não houvesse movimentação nas contas 

# Como esse teste demonstra a propriedade de atomicidade?
# Porque ele permite ou não a movimentação (tudo ou nada)