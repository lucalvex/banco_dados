# Etapa 12. Consultar estado final

SELECT * FROM contas;
SELECT * FROM movimentacoes;

# Como verificar se o banco permaneceu consistente após todas as operações realizadas?
# - Olhando as moviemntacoes 

# Por que a consistência do banco depende não apenas dos comandos SQL, mas também da forma como eles são agrupados em transações?
# A consistência do banco de dados não depende só dos comandos SQL isolados porque, na prática, as operações quase sempre fazem parte de um processo maior que precisa ser executado como um todo