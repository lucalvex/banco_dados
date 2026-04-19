# Liste o nome do aluno, o nome da disciplina e a nota.
SELECT a.nome AS aluno, d.nome AS disciplina, m.nota
FROM aluno a
JOIN matricula m ON a.id = m.aluno_id
JOIN disciplina d ON m.disciplina_id = d.id;