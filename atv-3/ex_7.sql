# Etapa 7. Testar lock com duas sessões
START TRANSACTION;

SELECT * FROM contas WHERE id = 1 FOR UPDATE;

UPDATE contas
SET saldo = saldo - 200
WHERE id = 1;

COMMIT;

START TRANSACTION;

UPDATE contas
SET saldo = saldo + 300
WHERE id = 1;

# O que aconteceu com a segunda transação?
# - Ficou pressáo esperando a primeira transação finalizar 

# Por que ela precisou esperar?
# Porque é possível apenas uma transação manipulando o mesmo dado por vez

# Qual a função do FOR UPDATE?
# -  é bloquear (lock) as linhas retornadas pela consulta até que a transação atual seja finalizada