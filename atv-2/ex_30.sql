# Mostre o departamento e a quantidade de matrículas em disciplinas de cada departamento.
SELECT d.departamento, COUNT(m.id) AS total_matriculas
FROM disciplina d
JOIN matricula m ON d.id = m.disciplina_id
GROUP BY d.departamento;