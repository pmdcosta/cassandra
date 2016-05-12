#!/usr/bin/env bash

CASSANDRA=$(kubectl get pods | grep cassandra | awk '{print $1}')
CASSANDRA=$(echo $CASSANDRA | awk '{print $1}')
kubectl exec -ti $CASSANDRA -- nodetool status
