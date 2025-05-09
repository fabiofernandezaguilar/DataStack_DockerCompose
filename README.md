# 🧠 Data Stack Enterprice en Contenedores (Docker Compose)

Este repositorio contiene una solución de análisis de datos y automatización orquestada mediante Docker Compose, ideal para arquitecturas empresariales o proyectos de datos de nivel intermedio a avanzado.

---

## 🚀 Tecnologías utilizadas

| Herramienta       | Descripción                                                                    |
|-------------------|--------------------------------------------------------------------------------|
| ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?logo=postgresql&logoColor=white)      | Base de datos relacional robusta y open-source                      |
| ![PostgREST](https://img.shields.io/badge/PostgREST-2F4F4F?logo=postgresql&logoColor=white)        | API REST automática basada en PostgreSQL                            |
| ![Apache Spark](https://img.shields.io/badge/Spark-E25A1C?logo=apachespark&logoColor=white)        | Procesamiento distribuido para big data                             |
| ![Apache Airflow](https://img.shields.io/badge/Airflow-017CEE?logo=apacheairflow&logoColor=white)  | Orquestación de flujos de datos                                     |
| ![Metabase](https://img.shields.io/badge/Metabase-509EE3?logo=metabase&logoColor=white)            | Herramienta de BI para análisis visual                              |
| ![Superset](https://img.shields.io/badge/Superset-F5C745?logo=apache&logoColor=black)              | Plataforma de exploración y visualización de datos                  |

---

## 📦 Estructura del proyecto

```bash
.
├── docker-compose.yml
├── airflow/           # DAGs y configuración de Apache Airflow
├── metabase/          # Configuraciones y volúmenes persistentes
├── superset/          # Configuración inicial y dataset demo
├── spark/             # Scripts y pipelines Spark
├── postgrest/         # Configuración de la API sobre PostgreSQL
└── postgres/          # Archivos de inicialización y datos de ejemplo
```

<img width="602" alt="Screenshot 2025-05-04 at 4 04 18 PM" src="https://github.com/user-attachments/assets/0a985b7b-43e7-46dd-a797-31de0296ff58" />

<img width="757" alt="Screenshot 2025-05-04 at 4 09 10 PM" src="https://github.com/user-attachments/assets/e7e42736-231e-4f81-99a1-c67e46fbdce8" />


---

## 🔧 Requisitos

- Docker v20+
- Docker Compose v2.0+

---

## ▶️ Cómo iniciar el entorno

```bash
docker compose -f [filename_dockercompose.yml] up -d

docker compose -f docker-compose.yml up -d
```

<img width="962" alt="Screenshot 2025-05-04 at 4 22 03 PM" src="https://github.com/user-attachments/assets/633d6d64-3f8c-4524-ba11-c2bc5737897d" />



Todos los servicios se iniciarán en modo desatendido. Puedes monitorear el estado con:

```bash
docker compose ps
```

---

## ▶️ Cómo detener el destruir los comtenedores

```bash
docker compose -f [filename_dockercompose.yml] down -v

docker compose -f docker-compose.yml down -v
```

<img width="875" alt="Screenshot 2025-05-04 at 4 44 14 PM" src="https://github.com/user-attachments/assets/c6e989f0-c892-46b6-a235-8bda53cd6ef8" />


## 🌐 Accesos por defecto

| Servicio       | URL                           | Credenciales                     |
|----------------|-------------------------------|----------------------------------|
| Airflow        | http://localhost:8080         | admin / admin                    |
| Metabase       | http://localhost:3000         | Se define en el primer uso       |
| Superset       | http://localhost:8088         | admin / admin                    |
| PostgREST API  | http://localhost:3001         | Abierto sobre PostgreSQL schema  |

---

## 🛠️ Personalización

- Puedes modificar el esquema de la base de datos en `postgres/init.sql`
- Los DAGs de Airflow están en `airflow/dags/`
- Para agregar visualizaciones en Superset y Metabase, accede vía navegador y usa el dataset cargado.

---

## 📄 Notas: 
1. Este ambiente no es persistente, por lo que cada vez que el ambiente se levante, va a inicializar en CERO
2. Para mi ambiente, la base de datos postgresql qu utilizo, no es la del repositorio, si no una base de datos local (instancia instalada en MACOS)

--- 

## 📄 Licencia

Este proyecto se entrega bajo la licencia MIT. Eres libre de adaptarlo, modificarlo y utilizarlo en tus propios proyectos.

---

## 👨‍💻 Autor

Desarrollado por Fabio Fernández 📊

