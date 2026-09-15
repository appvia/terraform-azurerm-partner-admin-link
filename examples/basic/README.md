<!-- BEGIN_TF_DOCS -->
## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_partner_admin_link"></a> [partner\_admin\_link](#module\_partner\_admin\_link) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_delete_on_destroy"></a> [delete\_on\_destroy](#input\_delete\_on\_destroy) | Whether to delete the partner registration on destroy. Useful for testing and cleanup. | `bool` | `false` | no |
| <a name="input_partner_id"></a> [partner\_id](#input\_partner\_id) | The Microsoft Partner Network (MPN) ID to link to the subscription. | `number` | `6098754` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_example"></a> [example](#output\_example) | The partner name and state returned from the management partner registration. |
<!-- END_TF_DOCS -->
