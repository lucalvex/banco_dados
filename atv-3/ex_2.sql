# Etapa 2. Testar COMMIT
START TRANSACTION;

UPDATE contas
SET saldo = saldo - 100
WHERE id = 1;

UPDATE contas
SET saldo = saldo + 100
WHERE id = 2;

COMMIT;

SELECT * FROM contas;

# O que aconteceu com os saldos após o COMMIT?
# - Os saldos das contas foram atualizados com os novos valores calculados 

# Por que as duas instruções UPDATE devem fazer parte da mesma transação?
# - Para manter as propriedades do banco intactas: atomicidade, consistência, isolamento e durabilidade. Porque ambos alteram o mesmo campo