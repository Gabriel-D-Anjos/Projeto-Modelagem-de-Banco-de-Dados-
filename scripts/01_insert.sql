-- ===============================
-- INSERTS - Tabelas Principais
-- ===============================

-- CLIENTE
INSERT INTO cliente (id_cliente, nome, telefone, email, data_cadastro) VALUES
(1, 'João Silva', '11987654321', 'joao@gmail.com', '2024-05-10'),
(2, 'Maria Souza', '11999887766', 'maria@gmail.com', '2024-05-12'),
(3, 'Carlos Mendes', '11977665544', 'carlos@gmail.com', '2024-05-13');

-- BARBEIRO
INSERT INTO barbeiro (id_barbeiro, nome, especialidade, telefone) VALUES
(1, 'André Santos', 'Barba', '11944445555'),
(2, 'Rafael Lima', 'Corte Masculino', '11933334444');

-- HORARIO
INSERT INTO horario (id_horario, data, hora, status) VALUES
(1, '2024-06-01', '09:00', 'disponivel'),
(2, '2024-06-01', '10:00', 'disponivel'),
(3, '2024-06-01', '11:00', 'ocupado');

-- SERVICO
INSERT INTO servico (id_servico, nome, descricao, valor) VALUES
(1, 'Corte Masculino', 'Corte padrão masculino', 35.00),
(2, 'Barba Completa', 'Barba com desenho e acabamento', 25.00),
(3, 'Combo Corte + Barba', 'Corte completo + barba', 55.00);

-- AGENDAMENTO
INSERT INTO agendamento (id_agendamento, id_cliente, id_barbeiro, id_horario, data_agendamento) VALUES
(1, 1, 1, 1, '2024-05-20'),
(2, 2, 2, 2, '2024-05-22'),
(3, 3, 1, 3, '2024-05-25');

-- ATENDIMENTO
INSERT INTO atendimento (id_atendimento, id_agendamento, id_servico, observacoes) VALUES
(1, 1, 1, 'Cliente pediu acabamento na lateral.'),
(2, 2, 3, 'Cliente preferiu modelo degradê.'),
(3, 3, 2, 'Barba cheia, pediu desenho simples.');

-- PAGAMENTO
INSERT INTO pagamento (id_pago, id_atendimento, valor_pago, forma_pagamento, data_pagamento) VALUES
(1, 1, 35.00, 'Cartão', '2024-06-01'),
(2, 2, 55.00, 'Pix', '2024-06-01'),
(3, 3, 25.00, 'Dinheiro', '2024-06-01');
