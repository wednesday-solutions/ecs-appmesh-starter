#!/bin/bash -e -x 

./scripts/create-gw-task-execution-roles.sh
./scripts/create-gw-task-roles.sh
./scripts/create-svc-task-execution-roles.sh
./scripts/create-svc-task-roles.sh