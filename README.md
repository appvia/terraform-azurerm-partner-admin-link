<!-- markdownlint-disable -->

<a href="https://www.appvia.io/"><img src="https://raw.githubusercontent.com/appvia/terraform-azurerm-partner-admin-link/refs/heads/main/docs/banner.jpg" alt="Appvia Banner"/></a><br/><p align="right"> </a> <a href="https://registry.terraform.io/modules/appvia/partner-admin-link/azurerm/latest"><img src="https://img.shields.io/static/v1?label=APPVIA&message=Terraform%20Registry&color=191970&style=for-the-badge" alt="Terraform Registry"/></a> <a href="https://github.com/appvia/terraform-azurerm-partner-admin-link/releases/latest"><img src="https://img.shields.io/github/release/appvia/terraform-azurerm-partner-admin-link.svg?style=for-the-badge&color=006400" alt="Latest Release"/></a> <a href="https://appvia-community.slack.com/join/shared_invite/zt-1s7i7xy85-T155drryqU56emm09ojMVA#/shared-invite/email"><img src="https://img.shields.io/badge/Slack-Join%20Community-purple?style=for-the-badge&logo=slack" alt="Slack Community"/></a> <a href="https://github.com/appvia/terraform-azurerm-partner-admin-link/graphs/contributors"><img src="https://img.shields.io/github/contributors/appvia/terraform-azurerm-partner-admin-link.svg?style=for-the-badge&color=FF8C00" alt="Contributors"/></a>

<!-- markdownlint-restore -->
<!--
  ***** CAUTION: Placeholders (terraform-azurerm-partner-admin-link, partner-admin-link) are managed by scripts/init-from-template.sh ******
-->

![Github Actions](https://github.com/appvia/terraform-azurerm-partner-admin-link/actions/workflows/terraform.yml/badge.svg)

# Terraform Partner Admin Link

## Description

Links an Azure Partner ID (MPN ID) to a tenant via the [Microsoft Partner Admin Link (PAL)](https://learn.microsoft.com/partner-center/marketplace-offers/link-partner-id-usage-telemetry) mechanism, so Microsoft can attribute the resources deployed in the subscription to the partner for usage and co-sell credit.

Does not delete the resource on destroy by default, as this is a destructive operation that will remove the partner association from the tenant. If you want to delete the resource on destroy, set `delete_on_destroy` to `true`, then perform an apply, followed by a destroy.

## Usage

```hcl
module "partner_admin_link" {
  source  = "appvia/partner-admin-link/azurerm"
  version = "0.0.1"
}
```

## Examples

See the [examples](./examples) directory for working usage examples.

- [Basic](./examples/basic) - A basic example of how to use this module.

<!-- BEGIN_TF_DOCS -->

## Providers

The following providers are used by this module:

- <a name="provider_azapi"></a> [azapi](#provider_azapi) (~> 2.11)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azapi_resource_action.management_partner_create](https://registry.terraform.io/providers/Azure/azapi/latest/docs/resources/resource_action) (resource)
- [azapi_resource_action.management_partner_delete](https://registry.terraform.io/providers/Azure/azapi/latest/docs/resources/resource_action) (resource)
- [azapi_resource_action.management_partner_patch](https://registry.terraform.io/providers/Azure/azapi/latest/docs/resources/resource_action) (resource)

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_delete_on_destroy"></a> [delete\_on\_destroy](#input_delete_on_destroy)

Description: If true, the Management Partner resource will be deleted when the Terraform resource is destroyed.  
If false, the Management Partner resource will remain in place after the Terraform resource is destroyed.

Note: to delete the management partner you must set this to `true` and run `terraform apply` before `terraform destroy`.

Type: `bool`

Default: `false`

### <a name="input_partner_id"></a> [partner\_id](#input_partner_id)

Description: The Microsoft Partner Network (MPN) ID to link to the subscription. Defaults to Appvia's MPN ID (6098754).

Note: **Do not use unknown values here**. Input the partner ID as a literal that is known at plan time.

Type: `number`

Default: `6098754`

## Outputs

The following outputs are exported:

### <a name="output_partner_name"></a> [partner\_name](#output_partner_name)

Description: The name of the partner associated with the tenant.

### <a name="output_status"></a> [status](#output_status)

Description: The status of the partner association with the tenant.
<!-- END_TF_DOCS -->

## Contributing

Contributions are welcome. Please read the [Code of Conduct](./CODE_OF_CONDUCT.md) before contributing.

## License

This project is licensed under the terms of the [GPL-3.0 license](./LICENSE).
