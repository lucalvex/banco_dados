# Liste o nome dos alunos e o nome das disciplinas em que estão matriculados.
SELECT a.nome AS aluno, d.nome AS disciplina
FROM aluno a
JOIN matricula m ON a.id = m.aluno_id
JOIN disciplina d ON m.disciplina_id = d.id;