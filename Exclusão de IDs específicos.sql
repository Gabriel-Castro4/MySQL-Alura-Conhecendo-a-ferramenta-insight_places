#Exclua IDs específicos

#delete de 'avaliacoes'
delete from avaliacoes
#onde o hospedagem_id seja: 10000 e 1001
WHERE hospedagem_id in ('10000', '1001');

#delete de 'reservas'
delete from reservas
#onde o hospedagem_id seja: 10000 e 1001
WHERE hospedagem_id in ('10000', '1001');

#delete de 'hospedagens'
DELETE FROM hospedagens
#onde o hospedagem_id seja: 10000 e 1001
WHERE hospedagem_id in ('10000', '1001');