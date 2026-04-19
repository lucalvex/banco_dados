# Etapa 1. Criar o banco de teste

DROP TABLE IF EXISTS contas;

CREATE TABLE contas (
    id INT PRIMARY KEY,
    titular VARCHAR(100),
    saldo DECIMAL(10,2)
);

INSERT INTO contas (id, titular, saldo) VALUES
(1, 'Ana', 1000.00),
(2, 'Bruno', 500.00),
(3, 'Carlos', 300.00),
(4, 'Daniela', 800.00);

SELECT * FROM contas;

# Qual é o objetivo da tabela contas neste cenário prático?
# - Simular os valores de contas bancárias de seus titulares 

# Quais são os saldos iniciais de cada titular antes da execução das transações?
# - São Ana - 1000.00, Bruno - 500.00, Carlos - 300.00, Daniela - 800.00