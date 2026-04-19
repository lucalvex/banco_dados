# Mostre a quantidade de alunos por cidade.
SELECT cidade, COUNT(*) AS quantidade_alunos
FROM aluno
GROUP BY cidade;