
#!/bin/bash

# Nombre de usuario de GitHub
GITHUB_USER="jrvasquez"

# Consulta la URL de GitHub por medio de la API concatenamos $GITHUB_USER
API_URL="https://api.github.com/users/$GITHUB_USER"  
response=$(curl -s $API_URL)

# Extrae la información del JSON importante instalar jq, aunque no es necesario pero facilita manipulacion de data
github_user=$(echo $response | jq -r '.login')
user_id=$(echo $response | jq -r '.id')
created_at=$(echo $response | jq -r '.created_at')

# Imprime el mensaje
echo "Hola $github_user. User ID: $user_id. Cuenta fue creada el: $created_at."

# Crea un log file en /tmp/<fecha>/saludos.log
log_dir="/tmp/$(date +'%Y%m%d')"
log_file="$log_dir/saludos.log"

mkdir -p $log_dir
echo "Hola $github_user. User ID: $user_id. Cuenta fue creada el: $created_at." > $log_file

# Crea un cronjob para que el script se ejecute cada 5 minutos
cronjob="*/5 * * * * $PWD/actividad2.sh"
(crontab -l; echo "$cronjob") | crontab -
