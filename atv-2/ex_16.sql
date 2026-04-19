# Mostre a quantidade de alunos por curso.
SELECT curso, COUNT(*) AS quantidade_alunos FROM aluno GROUP BY curso;