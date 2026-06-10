#Selecione a coluna 'nome' da tabela 'proprietario's (apelidada de p.nome), 
#Exiba essa coluna com o nome "nome_proprietario" no resultado final. É um apelido para a coluna ficar mais descritiva.
#COUNT: Função que conta quantos registros existem.
#h.hospedagem_id: Para cada proprietário, conte quantos hospedagem_id ele possui na tabela hospedagens.
#pegue o nome do proprietário, e conte a quantidade de hospedagens que ele possui e chame de 'total_hospedagens_ativas'
SELECT p.nome AS nome_proprietário, COUNT(h.hospedagem_id)
#Exiba essa contagem com o nome "total_hospedagens_ativas".
AS total_hospedagens_ativas
#A tabela principal desta consulta é proprietarios.
#p: Apelido dado à tabela para encurtar a escrita. Agora podemos escrever p.nome em vez de proprietarios.nome
#Da tabela 'proprietarios' apelidada de: 'p'
FROM proprietarios p
#JOIN: Conecte a tabela proprietarios com a tabela hospedagens.
#h: Apelido dado à tabela hospedagens.
#ON p.proprietario_id = h.proprietario_id: A conexão é feita pela coluna proprietario_id, que existe nas duas tabelas. Para cada proprietário, localize as hospedagens que possuem o mesmo proprietario_id.
#Junte 'hospedagens' apelidada de: 'h' com a tabela 'proprietarios'
#A junção é feita batendo a coluna 'proprietario_id'. Para cada dono, o MySQL procura as hospedagens dele.
JOIN hospedagens h ON p.proprietario_id = h.proprietario_id
#Filtre apenas as hospedagens onde a coluna ativo é igual a 1 (verdadeiro).
WHERE h.ativo = 1
#Agrupe os resultados pelo nome do proprietário.
GROUP BY p.nome
#Ordene o resultado final pela coluna total_hospedagens_ativas.
ORDER BY total_hospedagens_ativas DESC
#Mostre apenas as 10 primeiras linhas do resultado.
LIMIT 10;	