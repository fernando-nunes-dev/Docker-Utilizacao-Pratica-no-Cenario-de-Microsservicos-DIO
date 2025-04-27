#!/bin/bash

# Teste de carga na API
echo "Iniciando teste de estresse no cluster..."

# Teste básico com Apache Bench
ab -n 1000 -c 100 http://localhost/api/ping

# Monitoramento durante o teste
watch -n 1 'docker service ps microsservicos_api && docker stats --no-stream'