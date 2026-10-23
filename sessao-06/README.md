# Sessão 6 — Diagnóstico Sob Pressão

**Formando:** Heyniler Gomes  
**Curso:** Cibersegurança  
**Módulo:** Segurança Linux & Ops  
**Programa:** Skodji Digital  
**Formador:** Péricles Borges  
**Data:** 23 de outubro de 2026  
**Ambiente:** Ubuntu no WSL em Windows 11

## Objetivo

Monitorizar os processos do sistema, diagnosticar um incidente simulado de consumo elevado de CPU, controlar processos através de sinais e analisar os registos do sistema.

## Atividades realizadas

- Consulta de processos com ps, top e htop.
- Controlo de tarefas com jobs, fg, bg e os atalhos Ctrl+Z e Ctrl+C.
- Identificação do processo cvtech-sync.sh, com consumo próximo de 100% de CPU.
- Terminação do cvtech-sync.sh com SIGTERM.
- Teste repetido do cvtech-relatorio.sh: confirmação de que ignorava SIGTERM e terminação com SIGKILL.
- Consulta de eventos de sudo no journal e no auth.log.
- Análise do log do monitor e elaboração do relatório do incidente.
- Verificação final de ausência de processos cvtech ativos.

## Resultados

- Início registado do incidente: 11:36:00.
- Resolução detetada pelo monitor: 11:54:06.
- Intervalo até à resolução: 18 minutos e 6 segundos.
- Linhas com ERRO: 1.
- Linhas com WARN: 677.

## Evidências

- [Controlo de tarefas](sessao6_desafio1_jobs.png)
- [Diagnóstico do consumo de CPU](sessao6_desafio2_diagnostico.png)
- [Log com CPU normalizada](sessao6_desafio2_log.png)
- [Registos de sudo](sessao6_desafio3_logs.png)
- [Relatório do incidente](relatorio_incidente.txt)
