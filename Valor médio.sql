#selecione a coluna 'cliente_id', calcule a média da coluna 'preço_total', ache o resultado e chame-as de 'ticket_medio'
SELECT cliente_id, AVG(preço_total) as ticket_medio
#Da tabela 'alugueis'
FROM alugueis
#Agrupe pela coluna 'cliente_id'
GROUP BY cliente_id;