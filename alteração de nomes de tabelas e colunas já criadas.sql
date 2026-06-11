#alterar tabela 'alugueis' renomeie para 'reservas'
alter table alugueis rename to reservas;

#alterar tabela 'reservas', renomeie a coluna 'aluguel_id' para 'reserva_id'
alter table reservas rename column aluguel_id to reserva_id;