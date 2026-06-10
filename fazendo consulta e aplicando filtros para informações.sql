#selecione o nome dos proprietários e conte o total de hospedagens inativas que ele possui e chame de 'total_hospedagens_inativas'
SELECT p.nome AS nome_proprietario, COUNT(*) AS total_hospedagens_inativas
#Usa a tabela proprietarios como base, com apelido p.
FROM proprietarios p
#Junta com a tabela hospedagens (apelido h), usando a coluna proprietario_id que existe nas duas tabelas.
JOIN hospedagens h ON p.proprietario_id = h.proprietario_id
#Filtra apenas hospedagens inativas.
WHERE h.ativo = 0
#Agrupa por nome do proprietário.
#O COUNT(*) será calculado para cada nome.
GROUP BY p.nome;