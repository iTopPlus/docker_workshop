#!/bin/bash
docker rm -f nginx_exporter
docker run -d --restart=always \
    --name nginx_exporter \
    -p 9113:9113 \
    nginx/nginx-prometheus-exporter -nginx.scrape-uri http://172.31.98.182/nginx_status
