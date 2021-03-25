## Terraform ecs module 

Terraform module which creates ECS resources on AWS.

This module focuses purely on ECS and nothing else. Therefore only these resources can be created with this module:

ECS
IAM

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| aws | >= 2.48 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.48 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| capacity\_providers | List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE\_SPOT. | `list(string)` | `[]` | no |
| container\_insights | Controls if ECS Cluster has container insights enabled | `bool` | `false` | no |
| create\_ecs | Controls if ECS should be created | `bool` | `true` | no |
| default\_capacity\_provider\_strategy | The capacity provider strategy to use by default for the cluster. Can be one or more. | `list(map(any))` | `[]` | no |
| name | Name to be used on all the resources as identifier, also the name of the ECS cluster | `string` | `null` | no |
| tags | A map of tags to add to ECS Cluster | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_ecs\_cluster\_arn | ARN of the ECS Cluster |
| this\_ecs\_cluster\_id | ID of the ECS Cluster |
| this\_ecs\_cluster\_name | The name of the ECS cluster |

