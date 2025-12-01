-- 1. Listar todos os clientes com seus agendamentos
SELECT c.nome AS cliente, a.id_agendamento, a.data_agendamento
FROM cliente c
JOIN agendamento a ON c.id_cliente = a.id_cliente
ORDER BY a.data_agendamento DESC;

-- 2. Listar atendimentos com nome do barbeiro e serviço feito
SELECT at.id_atendimento, b.nome AS barbeiro, s.nome AS servico
FROM atendimento at
JOIN agendamento ag ON at.id_agendamento = ag.id_agendamento
JOIN barbeiro b ON ag.id_barbeiro = b.id_barbeiro
JOIN servico s ON at.id_servico = s.id_servico;

-- 3. Buscar horários disponíveis
SELECT * FROM horario
WHERE status = 'disponivel'
ORDER BY data, hora;

-- 4. Mostrar os 2 serviços mais caros
SELECT nome, valor
FROM servico
ORDER BY valor DESC
LIMIT 2;

-- 5. Listar pagamentos com nome do cliente e valor pago
SELECT p.id_pagamento, c.nome AS cliente, p.valor_pago, p.forma_pagamento
FROM pagamento p
JOIN atendimento at ON p.id_atendimento = at.id_atendimento
JOIN agendamento ag ON at.id_agendamento = ag.id_agendamento
JOIN cliente c ON ag.id_cliente = c.id_cliente;
