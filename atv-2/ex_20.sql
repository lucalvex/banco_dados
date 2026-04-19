# Mostre os cursos que possuem mais de 1 aluno cadastrado.
SELECT curso, COUNT(*) AS quantidade_alunos
FROM aluno
GROUP BY curso
HAVING COUNT(*) > 1;