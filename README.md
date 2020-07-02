# terraform-aws-securityhub-to-sns [![](https://github.com/rhythmictech/terraform-aws-securityhub-to-sns/workflows/pre-commit-check/badge.svg)](https://github.com/rhythmictech/terraform-aws-securityhub-to-sns/actions) <a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>
Use CloudWatch to send SecurityHub events to SNS

## Example
Here's what using the module will look like

```hcl
module "example" {
  source  = "rhythmictech/terraform-aws-securityhub-to-sns/aws"
  version = "0.0.1"
  
  custom_action_notification_arn    = "arn:aws:sns:us-east-1:012345678912:CreateTicket"
  imported_finding_notification_arn = "arn:aws:sns:us-east-1:012345678912:NotifySlack"
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| custom\_action\_notification\_arn | Notification ARN to send custom actions to (leave blank if not using custom actions) | `string` | `null` | no |
| imported\_finding\_notification\_arn | Notification ARN to send imported findings to (leave blank if not using custom actions) | `string` | `null` | no |
| name | Moniker to apply to or prefix all resources in the module | `string` | `"securityhub"` | no |
| tags | User-Defined tags | `map(string)` | `{}` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
