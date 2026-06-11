#mude o email do proprietario de id 1009 para daniela_120@email.com

#atualize 'proprietarios'
UPDATE proprietarios
#para contato = 'daniela_120@email.com'
set contato = 'daniela_120@email.com'
#Onde proprietario_id seja '1009';
where proprietario_id = '1009';

select * from proprietarios;

