# Liste apenas os alunos matriculados em disciplinas do departamento Computacao.
SELECT DISTINCT a.nome
FROM aluno a
JOIN matricula m ON a.id = m.aluno_id
JOIN disciplina d ON m.disciplina_id = d.id
WHERE d.departamento = 'Computacao';