#!/bin/sh

# This will have this script check for a new version of JMusicBot every
# startup (and download it if the latest version isn't currently downloaded)
DOWNLOAD=true

# This will cause the script to run in a loop so that the bot auto-restarts
# when you use the shutdown command
LOOP=true

# --- MODIFICAÇÃO PARA RAILWAY ---
# Cria o arquivo config.txt usando as variáveis de ambiente do Railway
# se ele ainda não existir.
if [ ! -f config.txt ]; then
    echo ">>> Gerando config.txt a partir das variáveis de ambiente..."
    echo "token = ${BOT_TOKEN}" > config.txt
    echo "owner = ${OWNER_ID}" >> config.txt
    echo "prefix = \"@mention\"" >> config.txt
fi
# --- FIM DA MODIFICAÇÃO ---


download() {
    if [ $DOWNLOAD = true ]; then
        URL=$(curl -s https://api.github.com/repos/jagrosh/MusicBot/releases/latest \
           | grep -i "browser_download_url.*\.jar" \
           | sed 's/.*\(http.*\)"/\1/')
        FILENAME=$(echo $URL | sed 's/.*\/\([^\/]*\)/\1/')
        if [ -f $FILENAME ]; then
            echo "Latest version already downloaded (${FILENAME})"
        else
            echo ">>> Baixando a versão mais recente: ${FILENAME}"
            curl -L $URL -o $FILENAME
        fi
    fi
}

run() {
    java -Dnogui=true -jar $(ls -t JMusicBot* | head -1)
}

while
    download
    run
    $LOOP
do
    echo ">>> O bot foi finalizado. Reiniciando em 5 segundos..."
    sleep 5
done