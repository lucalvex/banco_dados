# Mostre o nome dos alunos que tiveram matrícula com situação Reprovado.
SELECT DISTINCT a.nome
FROM aluno a
JOIN matricula m ON a.id = m.aluno_id
WHERE m.situacao = 'Reprovado';