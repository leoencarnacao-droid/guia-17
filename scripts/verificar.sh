#!/bin/bash

echo "===== RED ====="
ping -c 2 localhost

echo
echo "===== CLUSTER ====="
kubectl get nodes
kubectl get pods -A

echo
echo "===== APP ====="
curl -I http://localhost:8080

echo
echo "===== GRAFANA ====="
curl -I http://localhost:3000

echo
echo "===== PROMETHEUS ====="
curl -I http://localhost:9090
