# Mostre a média das notas por situação da matrícula.
SELECT situacao, AVG(nota) AS media_notas
FROM matricula
GROUP BY situacao;