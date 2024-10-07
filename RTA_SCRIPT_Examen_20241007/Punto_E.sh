#!/bin/bash
cat /proc/meminfo | grep -i memtotal > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Vallarino/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt
sudo dmidecode -t chassis | grep -i chassis >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Vallarino/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt
sudo dmidecode -t chassis | grep -i manufacturer >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Vallarino/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

