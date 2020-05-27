# terraform-aws-securityhub-to-sns [![](https://github.com/rhythmictech/terraform-aws-securityhub-to-sns/workflows/pre-commit-check/badge.svg)](https://github.com/rhythmictech/terraform-aws-securityhub-to-sns/actions) <a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=RhythmicTech" alt="follow on Twitter"></a>
Template repository for terraform modules. Good for any cloud and any provider.

## Example
Here's what using the module will look like
```
module "example" {
  source = "rhythmictech/terraform-aws-securityhub-to-sns
  custom_action_notification_arn    = "arn:aws:sns:us-east-1:012345678912:CreateTicket"
  imported_finding_notification_arn = "arn:aws:sns:us-east-1:012345678912:NotifySlack"
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Moniker to apply to all resources in the module | `string` | n/a | yes |
| tags | User-Defined tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| tags\_module | Tags Module in it's entirety |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
