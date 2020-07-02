
resource "aws_securityhub_account" "this" {}

# NOTE: Security Hub now enables these by default
# resource "aws_securityhub_product_subscription" "guardduty" {
#   depends_on  = [aws_securityhub_account.account]
#   product_arn = "arn:aws:securityhub:${var.region}::product/aws/guardduty"
# }

# resource "aws_securityhub_standards_subscription" "cis" {
#   depends_on    = [aws_securityhub_account.account]
#   standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
# }

resource "aws_cloudwatch_event_rule" "imported" {
  count       = var.imported_finding_notification_arn == null ? 0 : 1
  name        = "${var.name}-imported-findings"
  description = "SecurityHubEvent - Imported Findings"
  tags        = var.tags

  event_pattern = <<PATTERN
{
  "source": [
    "aws.securityhub"
  ],
  "detail-type": [
    "Security Hub Findings - Imported"
  ]
}
PATTERN
}

resource "aws_cloudwatch_event_target" "imported" {
  count     = var.imported_finding_notification_arn == null ? 0 : 1
  rule      = aws_cloudwatch_event_rule.imported[0].name
  target_id = "SendToSNS"
  arn       = var.imported_finding_notification_arn
}

resource "aws_cloudwatch_event_rule" "custom_action" {
  count       = var.custom_action_notification_arn == null ? 0 : 1
  name        = "${var.name}-custom-action"
  description = "SecurityHubEvent - Custom Action"
  tags        = var.tags

  event_pattern = <<PATTERN
{
  "source": [
    "aws.securityhub"
  ],
  "detail-type": [
    "Security Hub Findings - Custom Action"
  ]
}
PATTERN
}

resource "aws_cloudwatch_event_target" "custom_action" {
  count     = var.custom_action_notification_arn == null ? 0 : 1
  rule      = aws_cloudwatch_event_rule.custom_action[0].name
  target_id = "SendToSNS"
  arn       = var.custom_action_notification_arn
}
