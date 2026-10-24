# Sessão 7 — Backup Cifrado e Automatizado

**Formando:** Heyniler Gomes
**Curso:** Cibersegurança
**Módulo:** Segurança Linux & Ops
**Programa:** Skodji Digital
**Formador:** Péricles Borges
**Ambiente:** Ubuntu no WSL em Windows 11
**Data:** 24 de outubro de 2026

## Objetivo

Criar backups comprimidos e cifrados da pasta empresa, testar a recuperação dos dados e automatizar a execução com um script Bash e cron.

## Desafio 1 — Arquivar, comprimir e restaurar

- Criação de um arquivo tar.gz com tar e gzip.
- Consulta do conteúdo e comparação dos tamanhos.
- Extração para uma pasta de restauro.
- Comparação com diff, obtendo “Cópia idêntica”.
- Criação de um backup com a data no nome.

## Desafio 2 — Cifrar e decifrar

- Cifra com OpenSSL, AES-256-CBC e PBKDF2.
- Confirmação de que o tar não lê diretamente o ficheiro cifrado.
- Teste com palavra-passe errada e decifra com a correta.
- Proteção do ficheiro local de palavra-passe com permissões 600.

## Desafio 3 — Automatizar o backup

- Criação do script backup_cvtech.sh.
- Verificação da pasta de origem e do ficheiro de palavra-passe.
- Registo dos resultados em backup.log.
- Teste de erro com o ficheiro de palavra-passe temporariamente indisponível.
- Decifra e listagem do conteúdo do backup automático.
- Confirmação de backups criados pelo cron a cada dois minutos.
- Substituição do agendamento de teste por uma execução diária às 02:30.
- Proteção da pasta de backups com permissões 700.

No WSL, a execução agendada depende de o ambiente Ubuntu estar em funcionamento no horário definido.

## Ficheiros da entrega

- sessao7_desafio1_tar.png
- sessao7_desafio2_openssl.png
- sessao7_desafio3_restauro.png
- sessao7_desafio3_cron.png
- backup_cvtech.sh

O ficheiro .backup_pass e as palavras-passe não fazem parte da entrega.

## Conclusão

O laboratório permitiu criar, proteger e automatizar cópias de segurança. A recuperação do arquivo manual foi confirmada com diff, e o backup automático foi decifrado e listado com sucesso. Os testes demonstraram a importância de verificar erros, proteger a palavra-passe e confirmar a execução das tarefas agendadas.
