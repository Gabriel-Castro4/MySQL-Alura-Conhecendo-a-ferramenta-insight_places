#atualize 'hospedagens'
UPDATE hospedagens
#para 'ativo = 1'
set ativo = 1
#todas as hospedagens que a coluna 'hospedagem_id' seja: ('1', '10','100')
where hospedagem_id in ('1', '10','100');

#liste tudo de 'hospedagens'
select * from hospedagens;