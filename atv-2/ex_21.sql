# Liste o nome dos alunos e a situação de suas matrículas.
SELECT a.nome, m.situacao
FROM aluno a
JOIN matricula m ON a.id = m.aluno_id;