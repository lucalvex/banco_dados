# Etapa 10. Transferência com registro em histórico

START TRANSACTION;

UPDATE contas
SET saldo = saldo - 120
WHERE id = 2;

UPDATE contas
SET saldo = saldo + 120
WHERE id = 3;

INSERT INTO movimentacoes (conta_origem, conta_destino, valor)
VALUES (2, 3, 120.00);

COMMIT;

SELECT * FROM contas;
SELECT * FROM movimentacoes;

# Por que o INSERT na tabela movimentacoes deve estar na mesma transação dos UPDATEs?
# - Ele é atualizado toda vez que a conta por atualizado 

# O que poderia acontecer se o histórico fosse gravado, mas os saldos não fossem atualizados, ou vice-versa?
# - Ter inconsistente as informações, tendo valores inválidos 