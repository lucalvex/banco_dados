# Etapa 6. Testar leitura durante transação
START TRANSACTION;

UPDATE contas
SET saldo = saldo - 150
WHERE id = 1;

ROLLBACK;

# Qual era o objetivo de observar o valor da conta em outra sessão antes do COMMIT?
# - Ver o valor retrocendo ao seu valor inicial antes da operação

# Como esse teste se relaciona com o conceito de isolamento?
# - Porque as sessões brindam seus valores até um marco temporal 
