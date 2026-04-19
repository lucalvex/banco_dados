# Mostre o nome dos alunos de Computacao e as disciplinas que eles cursaram.
SELECT a.nome AS aluno, d.nome AS disciplina
FROM aluno a
JOIN matricula m ON a.id = m.aluno_id
JOIN disciplina d ON m.disciplina_id = d.id
WHERE a.curso = 'Computacao';