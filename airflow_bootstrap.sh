#!/bin/bash
#Esta linea se debe usar si se usa una versión de Airflow superior a 2.7
#airflow db migrate

#Esta linea se usa para las versiones de airflow 2.6 o inferior.
airflow db init
airflow users create \
  --username admin \
  --firstname Fabio \
  --lastname Fernández \
  --role Admin \
  --email fabio@datastrategys.com \
  --password admin
