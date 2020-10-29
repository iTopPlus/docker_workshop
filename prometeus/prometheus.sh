docker rm -f prom
docker run -d --restart=always \
    --name prom \
    -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml \
    -v $(pwd)/alert:/alert \
    -v prmo_data:/prometheus \
    -p 9090:9090 \
    prom/prometheus
docker logs -f prom

