# Sistema de Gerenciamento de Barbearia – Projeto SQL (Mini-Mundo)

Este projeto tem como objetivo implementar e manipular dados em um banco de dados relacional utilizando comandos SQL (DML), aplicando conceitos de modelagem lógica, tipos de dados e práticas de versionamento. O trabalho integra a criação do modelo lógico (DER) com o desenvolvimento de scripts SQL reais, simulando a gestão de uma barbearia.

---

## 📌 1. Mini-mundo do Sistema

O sistema foi desenvolvido para organizar e registrar os principais processos de uma barbearia.

Os clientes realizam agendamentos com barbeiros em horários específicos. Cada agendamento gera um atendimento, que contém os serviços realizados. Após o atendimento, é registrado um pagamento referente ao serviço prestado.

As entidades principais são:

- **Cliente**: registra dados pessoais e data de cadastro.  
- **Barbeiro**: profissionais responsáveis pelos atendimentos.  
- **Horário**: datas e horas disponíveis ou ocupadas.  
- **Serviço**: tipos de serviços oferecidos (corte, barba, etc.).  
- **Agendamento**: reserva feita por um cliente com um barbeiro.  
- **Atendimento**: execução de um serviço referente a um agendamento.  
- **Pagamento**: registro financeiro do atendimento realizado.

O sistema foi projetado para garantir integridade referencial, uso correto de chaves primárias e estrangeiras e relacionamentos coerentes entre as entidades.

---

## 📊 2. Diagrama Entidade-Relacionamento (DER)

O DER abaixo representa as entidades, atributos, chaves primárias, estrangeiras e relacionamentos do banco:

> ![Diagrama DER](docs/DER.png) 

O modelo apresenta relacionamentos essenciais como:
- Cliente **realiza** Agendamento  
- Barbeiro **atende** Agendamento  
- Agendamento **gera** Atendimento  
- Atendimento **gera** Pagamento  
- Atendimento **contém** Serviço  
- Horário **define** Agendamento  

O sistema de relacionamentos e cardinalidades é relativamente complexo, e sua construção representou um desafio interessante, porém muito útil para compreender melhor integração e coerência entre tabelas.

---

## 🗂️ 3. Estrutura do Repositório

