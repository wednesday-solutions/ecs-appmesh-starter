#!/bin/bash -x

#create role
# aws iam create-role --cli-input-json file://assets/roles/svc-task-execution-role.json

# attach policies
aws iam put-role-policy --cli-input-json file://assets/policies/taskExecutionRole/app-mesh-stream-agg-policy.json
aws iam put-role-policy --cli-input-json file://assets/policies/taskExecutionRole/ecr-policy.json
aws iam put-role-policy --cli-input-json file://assets/policies/taskExecutionRole/cloudwatch-policy.json