use insight_places;

#Selecione a informação do ano da 'data_inicio' e chame de 'ano'
SELECT YEAR(data_inicio) AS ano,
#Selecione a informação do mês da 'data_inicio' e chame de 'mes'
MONTH(data_inicio) as mes,
#Conte todos os alugueis e chame de 'total_alugueis'
count(*) as total_alugueis
#da tabela 'aluguis'
from alugueis
#agrupe por 'mes' e 'ano'
group by ano, mes
#ordene pela 'total_alugueis' de forma decrescente
order by total_alugueis desc;
