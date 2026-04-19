# Etapa 8. Testar concorrência em registros diferentes
START TRANSACTION;

UPDATE contas
SET saldo = saldo - 50
WHERE id = 1;

COMMIT;

START TRANSACTION;

UPDATE contas
SET saldo = saldo + 70
WHERE id = 4;

COMMIT;

# Por que nesse caso as transações tendem a não disputar o mesmo recurso?
# - Porque não manipulam o mesmo dado, são ids diferentes 

# O que esse teste mostra sobre concorrência em linhas diferentes da tabela?
# - Que é possível fazer algo paralelo quando as transações não se ligam 