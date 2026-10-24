#!/bin/bash
# Backup comprimido e cifrado da pasta ~/empresa
# Segurança Linux & Ops — Sessão 7

# Configuração
ORIGEM="$HOME/empresa"
DESTINO="$HOME/backups"
PASS_FILE="$HOME/.backup_pass"
DATA=$(date +%Y-%m-%d_%H%M)
FICHEIRO="$DESTINO/empresa_$DATA.tar.gz"
LOG="$DESTINO/backup.log"

# Garantir que a pasta de destino existe
mkdir -p "$DESTINO" || exit 1

# Verificar a pasta de origem
if [ ! -d "$ORIGEM" ]; then
    echo "$(date '+%F %T') ERRO pasta de origem não existe: $ORIGEM" >> "$LOG"
    echo "ERRO: a pasta $ORIGEM não existe."
    exit 1
fi

# Verificar o ficheiro de palavra-passe
if [ ! -f "$PASS_FILE" ]; then
    echo "$(date '+%F %T') ERRO ficheiro de password em falta: $PASS_FILE" >> "$LOG"
    echo "ERRO: falta o ficheiro de password $PASS_FILE."
    exit 1
fi

# Comprimir e cifrar
if tar -czf "$FICHEIRO" -C "$HOME" empresa &&
    openssl enc -aes-256-cbc -salt -pbkdf2 \
        -in "$FICHEIRO" \
        -out "$FICHEIRO.enc" \
        -pass file:"$PASS_FILE"; then

    rm -f "$FICHEIRO"
    echo "$(date '+%F %T') OK backup criado: $FICHEIRO.enc" >> "$LOG"
    echo "Backup criado: $FICHEIRO.enc"
else
    rm -f "$FICHEIRO" "$FICHEIRO.enc"
    echo "$(date '+%F %T') ERRO falha ao criar o backup" >> "$LOG"
    echo "ERRO: o backup falhou."
    exit 1
fi
