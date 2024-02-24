# Configuración del Servicio de Saludo

## Creación del Script `saludo.sh`

Se creará un script llamado `saludo.sh` que ejecutará un servicio. Este script estará escrito en Bash y se encargará de imprimir un saludo junto con la fecha actual, con una pausa de 1 segundo entre cada impresión.

```bash
#!/bin/bash
while true; do
    echo "¡Hola! Fecha actual: $(date)"
    sleep 1     # Timer de un segundo
done


--guardamos el script en la ruta 
## /usr/local/bin/.

-- damos permiso  al archivo 
## sudo chmod +x /usr/local/bin/saludo.sh

## Luego se creara el archivo de servicio Systemd con nombre saludo.service se guardara en la ruta /etc/systemd/system/.

###. [Unit]
Description=Servicio de saludo

###. [Service]
Type=simple
ExecStart=/usr/local/bin/saludo_script.sh
Restart=always

###. [Install]
WantedBy=multi-user.target

### . recargamos  los archivos de configuración de systemd para  reocnocer el nuevo servicio.

bash
Copy code
sudo systemctl daemon-reload

##Habilitamos el servicio para que se inicie automaticamente con el sistema.

bash
Copy code
## sudo systemctl enable saludo.service

Ahora ya podemos iniciar el servicio.

bash
Copy code
## sudo systemctl start saludo.service

Comprobamos el servicio.

bash
Copy code
## sudo systemctl status saludo.service

Revisamos los logs del servicio.


bash
Copy code
## journalctl -u saludo.service

bash
Copy code
## journalctl -u saludo.service -n 50   
-- ultimos 50 registros.


