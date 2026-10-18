# Sessão 04 — Gestão de utilizadores e grupos em Linux

**Formando:** Heyniler Gomes
**Programa:** Skodji Digital
**Data do laboratório:** 18 de outubro de 2026
**Ambiente:** Ubuntu no WSL — Windows 11

## Objetivo
Criar e gerir contas e grupos, testar permissões de administração e produzir uma auditoria das contas do sistema.

## Atividades realizadas
- Criação dos grupos rh, ti e financas.
- Criação das contas alice, bruno, carla e estagiario.
- Definição de palavras-passe para Alice, Bruno e Carla.
- Associação dos utilizadores aos respetivos departamentos.
- Atribuição de acesso sudo ao Bruno.
- Comparação entre usermod -aG e usermod -G na conta estagiario.
- Confirmação de que Alice não pode usar sudo e Bruno tem acesso administrativo.
- Remoção da conta temporária estagiario.
- Criação do ficheiro auditoria_contas.txt.

## Evidências
- [Criação das contas](sessao4_desafio1_contas.png)
- [Grupos e teste de alteração](sessao4_desafio2_grupos.png)
- [Teste sudo — Alice](sessao4_desafio2_sudo_a.png)
- [Teste sudo — Bruno](sessao4_desafio2_sudo_b.png)
- [Relatório de auditoria](auditoria_contas.txt)

## Conclusão
O laboratório permitiu praticar a gestão de contas e grupos e aplicar o princípio do menor privilégio. Entre as contas criadas para o exercício, apenas Bruno recebeu acesso administrativo. A conta pessoal heyniler manteve o acesso sudo necessário à administração do ambiente.
