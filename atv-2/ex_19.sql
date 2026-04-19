# Mostre quantas matrículas existem por semestre.
SELECT semestre, COUNT(*) AS total_matriculas
FROM matricula
GROUP BY semestre;