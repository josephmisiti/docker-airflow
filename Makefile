build:
	docker build --rm --build-arg AIRFLOW_DEPS="kubernetes" -t josephmisiti/docker-airflow .

build-no:
	docker build --no-cache --rm --build-arg AIRFLOW_DEPS="kubernetes" -t josephmisiti/docker-airflow .

run:
	docker run 'josephmisiti/docker-airflow' python -c 'from airflow import providers; print("worked!")'

version:
	docker run 'josephmisiti/docker-airflow' version

push:
	docker push josephmisiti/docker-airflow:latest

webserver:
	docker run -p 8080:8080 josephmisiti/docker-airflow webserver