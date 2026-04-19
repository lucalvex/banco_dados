# Mostre a média de notas por aluno.
SELECT a.nome, AVG(m.nota) AS media_notas
FROM aluno a
JOIN matricula m ON a.id = m.aluno_id
GROUP BY a.nome;