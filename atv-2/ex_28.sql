# Mostre a quantidade de disciplinas cursadas por cada aluno.
SELECT a.nome, COUNT(m.disciplina_id) AS total_disciplinas
FROM aluno a
JOIN matricula m ON a.id = m.aluno_id
GROUP BY a.nome;