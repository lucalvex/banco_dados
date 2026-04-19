# Etapa 9. Criar tabela de movimentações
DROP TABLE IF EXISTS movimentacoes;

CREATE TABLE movimentacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    conta_origem INT,
    conta_destino INT,
    valor DECIMAL(10,2),
    data_movimentacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

# Qual é a importância de registrar movimentações além de atualizar os saldos?
# - A importância é ter um histórico das atualizações de saldos 