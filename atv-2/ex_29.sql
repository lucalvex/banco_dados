# Liste os alunos cuja média de notas foi maior que 8.
SELECT a.nome, AVG(m.nota) AS media_notas
FROM aluno a
JOIN matricula m ON a.id = m.aluno_id
GROUP BY a.nome
HAVING AVG(m.nota) > 8;