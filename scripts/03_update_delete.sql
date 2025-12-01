-- ===============================
-- UPDATES
-- ===============================

-- 1. Atualizar telefone de um cliente
UPDATE cliente
SET telefone = '11955554444'
WHERE id_cliente = 1;

-- 2. Alterar status de um horário
UPDATE horario
SET status = 'ocupado'
WHERE id_horario = 1;

-- 3. Atualizar o valor de um serviço
UPDATE servico
SET valor = 60.00
WHERE id_servico = 3;

-- ===============================
-- DELETEs
-- ===============================

-- 1. Excluir um horário disponível (exemplo)
DELETE FROM horario
WHERE id_horario = 2 AND status = 'disponivel';

-- 2. Excluir atendimento com observação vazia
DELETE FROM atendimento
WHERE observacoes IS NULL OR observacoes = '';

-- 3. Excluir um pagamento específico
DELETE FROM pagamento
WHERE id_pagamento = 3;
