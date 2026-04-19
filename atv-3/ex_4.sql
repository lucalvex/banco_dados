# Etapa 4. Testar erro lógico antes da confirmação
START TRANSACTION;

UPDATE contas
SET saldo = saldo - 2000
WHERE id = 3;

SELECT * FROM contas WHERE id = 3;

ROLLBACK;

SELECT * FROM contas WHERE id = 3;

# Por que a transação foi desfeita neste caso?
# - Por causa do rollback - que cancela as alterações 

# Qual problema de integridade poderia ocorrer se essa transação fosse confirmada?
# - Ter valores não válidos dentro do banco de dados (dados sujos)