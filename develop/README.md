# develop

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_user.myiam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_user_names"></a> [user\_names](#input\_user\_names) | Create IAM users with these names | `list(string)` | <pre>[<br>  "gasida",<br>  "akbun"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_all_arns"></a> [all\_arns](#output\_all\_arns) | The ARNs for all users |
| <a name="output_first_arn"></a> [first\_arn](#output\_first\_arn) | The ARN for the first user |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
