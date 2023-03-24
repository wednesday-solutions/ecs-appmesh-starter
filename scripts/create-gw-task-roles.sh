#!/bin/bash -e -x

# create role
aws iam create-role --cli-input-json file://assets/roles/gw-task-role.json

# attach AWSAppMeshEnvoyAcccessPolicy
aws iam attach-role-policy \
  --policy-arn arn:aws:iam::aws:policy/AWSAppMeshEnvoyAccess \
  --role-name gwTaskRole