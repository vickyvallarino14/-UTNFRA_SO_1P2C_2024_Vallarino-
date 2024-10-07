#!/bin/bash/
echo "Mi IP Publica es:" $(curl -s ifconfig.me) > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Vallarino/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo "Mi usuario es:" $(grep vagrant /etc/passwd | awk -F ':' '{print $1}') >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Vallarino/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es:" $(echo -n $(whoami) | md5sum | awk '{print $1}') >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Vallarino/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo "La URL de mi dispostivo es:" $(git remote get-url origin) >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Vallarino/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
