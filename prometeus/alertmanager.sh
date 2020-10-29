docker rm -f alertmanager
docker run -d --name=alertmanager -p 9093:9093 -v $(pwd)/alertmanager.yml:/etc/alertmanager/alertmanager.yml prom/alertmanager
docker logs -f alertmanager
