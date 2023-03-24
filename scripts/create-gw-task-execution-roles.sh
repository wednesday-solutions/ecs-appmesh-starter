#!/bin/bash -e -x

#create role
# aws iam create-role --cli-input-json file://assets/roles/gw-task-execution-role.json

# attach policies
aws iam put-role-policy --cli-input-json file://assets/policies/taskExecutionRole/ecr-policy.json --role-name gwTaskExecutionRole
aws iam put-role-policy --cli-input-json file://assets/policies/taskExecutionRole/cloudwatch-policy.json --role-name gwTaskExecutionRole
aws iam put-role-policy --cli-input-json file://assets/policies/taskExecutionRole/app-mesh-stream-agg-policy.json --role-name gwTaskExecutionRole