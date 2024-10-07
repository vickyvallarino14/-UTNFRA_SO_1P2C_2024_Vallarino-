#!/bin/bash
sudo groupadd p1c2_2024_gAlumno
sudo useradd -m -s /bin/bash -c "Alumno p1c2_2024_A1" -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "Alumno p1c2_2024_A2" -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "Alumno p1c2_2024_A3" -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
sudo groupadd p1c2_2024_gProfesores
sudo useradd -m -s /bin/bash -c "Profesor p1c2_2024_P1" -G p1c2_2024_gProfesores -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno1
sudo chmod 760 /Examenes-UTN/alumno1

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno2
sudo chmod 760 /Examenes-UTN/alumno2

sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno3
sudo chmod 700 /Examenes-UTN/alumno3

sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 775 /Examenes-UTN/profesores

sudo su -c "whoami > /Examenes-UTN/alumno1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1

