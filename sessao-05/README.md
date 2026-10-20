# Sessão 5 — Pastas Departamentais e Políticas de Acesso

**Formando:** Heyniler Gomes  
**Formador:** Péricles Borges  
**Programa:** Skodji Digital  
**Módulo:** Segurança Linux & Ops  
**Ambiente:** Ubuntu no WSL — Windows 11  
**Datas de realização:** 19 e 20 de outubro de 2026

## Objetivo

Configurar as permissões das pastas departamentais da CVTECH Lda.,
testar os acessos e aplicar uma política de passwords.

## Desafio 1 — Leitura de permissões

Consultei as permissões de /etc/passwd e /etc/shadow com ls e stat.
Criei as pastas rh, ti, financas e publico em /srv/cvtech.

## Desafio 2 — Controlo de acessos

Configurei os seguintes donos, grupos e permissões:

| Pasta | Dono | Grupo | Permissões |
|---|---|---|---|
| rh | root | rh | 770 |
| ti | bruno | ti | 770 |
| financas | root | financas | 770 |
| publico | root | root | 755 |

O ficheiro confidencial.txt ficou com dona alice, grupo rh e permissões 640.

Confirmei que:
- Alice consegue ler o documento de RH.
- Carla não consegue ler o documento de RH nem listar a pasta de TI.
- Carla consegue listar a pasta pública, mas não criar ficheiros nela.
- Root consegue ler o documento de RH.

Criei também o script ola.sh e acrescentei a permissão de execução
para o dono com chmod u+x.

## Desafio 3 — Política de passwords

Apliquei à conta carla:
- Validade máxima da password: 90 dias.
- Aviso antes da expiração: 7 dias.
- Período após a expiração até à inativação: 30 dias.
- Alteração obrigatória da password no próximo início de sessão.

Testei o bloqueio e o desbloqueio da password com passwd -l e passwd -u.
Confirmei os estados L e P com passwd -S.
No final, a password ficou desbloqueada, mantendo a alteração obrigatória.

## Evidências

- Captura do Desafio 1: leitura de permissões e estrutura inicial.
- Captura do Desafio 2: permissões e testes de acesso.
- Captura do Desafio 3: política de passwords, bloqueio e desbloqueio.
- auditoria_acessos.txt: relatório de auditoria.

## Conclusão

O laboratório permitiu aplicar o princípio do menor privilégio,
restringindo os acessos aos departamentos e protegendo o documento
confidencial. Os testes confirmaram as permissões configuradas
e a aplicação da política de passwords à conta Carla.
