# BDEA Projekt Nr.1
## Inhalt des Projekts
In diesem Notebook-basierten Tutorial wird eine beispielhafte Datenanalyse von Schlafdaten in einem Jupyter Notebook ausgeführt. Dafür wird eine MariaDB Datenbank zur Verwaltung der Daten und die Python Programmbibliothek pandas zur weiteren Verarbeitung, Analyse und Darstellung verwendet. Das ganze Projekt läuft in einem Docker-Container.

## Übersicht Repository
Pfad | Dateiname | Sprache / Dateiformat| Beschreibung | 
-- | -- | -- | -- | 
`/docker_setup/data/` | [`sleep_data.csv`](https://github.com/Sofia911/BDEA/tree/main/docker_setup/data) | ._csv_-Datei | Quelldatei Schlafdaten|
`/docker_setup/mariadb/` | [`Dockerfile`](https://github.com/Sofia911/BDEA/blob/main/docker_setup/mariadb/Dockerfile) | Dockerfile | Dockerfile für das mariadb Dockerimage |
`/docker_setup/mariadb/` | [`init.sql`](https://github.com/Sofia911/BDEA/blob/main/docker_setup/mariadb/init.sql) |._sql_-Datei | Datei zum Aufsetzen der Datenbank der Tabelle _sleep_data_ |
`/docker_setup/notebooks/`| [`SleepAnalysis.ipynb`](https://github.com/Sofia911/BDEA/blob/main/docker_setup/notebooks/SleepAnalysis.ipynb) |._ipynb_-Datei | Jupyter Notebook mit den Analysen|
`/docker_setup/notebooks/.ipynb_checkpoints/`| [`SleepAnalysis-checkpoint.ipynb`](https://github.com/Sofia911/BDEA/blob/main/docker_setup/notebooks/.ipynb_checkpoints/SleepAnalysis-checkpoint.ipynb) |._ipynb_-Datei | Jupyter checkpoint Datei|
`/docker_setup/notebooks/python/`| [`Dockerfile`](https://github.com/Sofia911/BDEA/blob/main/docker_setup/python/Dockerfile) | Dockerfile | Dockerfile für das python Dockerimage |
`/docker_setup/`| [`docker-compose.yaml`](https://github.com/Sofia911/BDEA/blob/main/docker_setup/docker-compose.yaml) | ._yaml_-Datei | Datei definiert Dienste, Netzwerke und Volumes für die Docker-Anwendung |

## Quellen
* Folgende Images wurden verwendet:     
  * [Python3.8-slim](https://hub.docker.com/_/python) 
  * [Mariadb:lastest](https://hub.docker.com/_/mariadb)

* Basierend auf folgenden Quellen wurde das Projekt aufgesetzt: 	
   * [Docker Tutorial part 1 | Python in Docker | Jupyter in Docker](https://github.com/misohu/python_in_docker)<br>
   * [Docker Tutorial part 2 | Docker Compose](https://github.com/misohu/docker_compose_tutorial)
   * [Installing and Using MariaDB via Docker](https://mariadb.com/kb/en/installing-and-using-mariadb-via-docker/)
   * [How to use MariaDB with Docker and docker-compose for development](https://www.beekeeperstudio.io/blog/how-to-use-mariadb-with-docker)
   * [MariaDB Documentation](https://hub.docker.com/_/mariadb)
   * [MariaDB Connector/Python](https://mariadb-corporation.github.io/mariadb-connector-python/)
   * [Connect Python to MariaDB/MySQL Database](https://www.youtube.com/watch?v=oDR7k66x-AU)
   
* Datenquellen:
   * eigene Daten aufgezeichnet mit Garmin Forerunner 945, angefordert über das Account Managment Center von Garmin
   
## Installation
1. Docker installieren (Download für [mac](https://docs.docker.com/desktop/install/mac-install/), für [windows](https://docs.docker.com/desktop/install/windows-install/))
2. Dieses [Repository](https://github.com/Sofia911/BDEA) clonen
3. In den Ordner [docker_setup](https://github.com/Sofia911/BDEA/tree/main/docker_setup) navigieren und den Befehl ```docker-compose up``` in der Konsole ausführen
4. Im Browser [localhost:8888](http://localhost:8888) aufrufen, um zum Jupyter Notebook zu gelangen

## Beschreibung der Daten

Zeitraum: 03.09.2022 - 10.04.2023<br>
Anzahl Datensätze: 220

| Spaltenname | Beschreibung
| :-- | :-- 
| startDay |  Tag des Einschlafens (Primary Key in Kombination mit startTime)
| startTime| Uhrzeit des Einschlafens (Primary Key in Kombination mit startDay)
| endDay|  Tag des Aufwachens
| endTime| Uhrzeit des Aufwachens
| deepSleepSeconds| Zeit in Sekunden im Tiefschlaf (Optimal: 16 bis 33 % der gesamten Schlafzeit)
| lightSleepSeconds| Zeit in Sekunden leichter Schlaf (Optimal: 30 bis 64 % der gesamten Schlafzeit)
| REMSleepSeconds| Zeit in Sekunden REM-Schlaf (Optimal: 21 bis 31 % der gesamten Schlafzeit)
| awakeSeconds| Zeit in Sekunden Wachzeit. (Optimal: weniger als 20 Minuten Wachzeit)
| unmeasuredSeconds| Nicht messbare Zeit in Sekunden
| averageRespRate| Durchschnittliche Atemfrequenz
| lowestRespRate| Geringste Atemfrequenz
| highestRespRate| Höchste Atemfrequenz
| overallScore| Zahl (von 0 bis 100) zur Einstufung der Schlafqualität. Dabei werden folgende Kategorien in Betracht gezogen: Schlafdauer, durchschnittlicher Stresswert beim Schlafen, gesamter Tiefschlaf, gesamter leichter Schlaf, gesamter REM-Schlaf und Wach/Unruhe. (Ausgezeichnet: 90 -100, Gut: 80 -89, Ausreichend: 60 - 79, Schlecht: Unter 60)
| qualityScore| The date the patient was born.
| durationScore| Wert, der anhand der Schlafdauer bestimmt wird. Optimale Schlafdauer sind 8 Stunden.
| recoveryScore| Wert, der anhand der Erholung durch den Schlaf bestimmt wird
| deepScore| Wert, der abhängig vom Tiefschlaf bestimmt wird
| REMScore| Wert, der abhängig vom REM-Schlaf bestimmt wird
| lightScore| Wert, der abhängig vom leichten Schlaf bestimmt wird
| awakeningsCountScore| Wert, der abhängig der Aufwachhäufigkeit während des Schlafs bestimmt wird (Optimal: Aufwachzeit mit einer Dauer von mehr als 5 Minuten)
| awakeTimeScore| Wert, der abhängig der Wachzeit während des Schlafs bestimmt wird
| combinedAwakeScore| Wert, der abhängig der Aufwachhäufigkeit und Wachzeit während des Schlafs bestimmt wird
| restfulnessScore| Wert, der anhand der Erholung durch den Schlaf bestimmt wird
| interruptionsScore| Wert, der anhand der Unterbrechungsshäufigkeit des Schlafs bestimmt wird
| sleepFeedback| schriftliches Feedback zum Schlaf
| insight| mögliche Gründe, die den Schlaf beeinflusst haben können
| RestingHeartRate| Herzfrequenz im Wachzustand in Ruhe
| minAvgHeartRate| minimale durchschnittliche Herzfrequenz 
| maxAvgHeartRate| maximale durchschnittliche Herzfrequenz
| AsleepAverageStressLevel| Schlafenszeitstress (liegt idealerweiße unter 15)
