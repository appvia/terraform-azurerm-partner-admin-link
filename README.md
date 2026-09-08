<!-- markdownlint-disable -->

<a href="https://www.appvia.io/"><img src="https://raw.githubusercontent.com/appvia/terraform-azurerm-partner-admin-link/refs/heads/main/docs/banner.jpg" alt="Appvia Banner"/></a><br/><p align="right"> </a> <a href="https://registry.terraform.io/modules/appvia/partner-admin-link/azurerm/latest"><img src="https://img.shields.io/static/v1?label=APPVIA&message=Terraform%20Registry&color=191970&style=for-the-badge" alt="Terraform Registry"/></a> <a href="https://github.com/appvia/terraform-azurerm-partner-admin-link/releases/latest"><img src="https://img.shields.io/github/release/appvia/terraform-azurerm-partner-admin-link.svg?style=for-the-badge&color=006400" alt="Latest Release"/></a> <a href="https://appvia-community.slack.com/join/shared_invite/zt-1s7i7xy85-T155drryqU56emm09ojMVA#/shared-invite/email"><img src="https://img.shields.io/badge/Slack-Join%20Community-purple?style=for-the-badge&logo=slack" alt="Slack Community"/></a> <a href="https://github.com/appvia/terraform-azurerm-partner-admin-link/graphs/contributors"><img src="https://img.shields.io/github/contributors/appvia/terraform-azurerm-partner-admin-link.svg?style=for-the-badge&color=FF8C00" alt="Contributors"/></a>

<!-- markdownlint-restore -->
<!--
  ***** CAUTION: Placeholders (terraform-azurerm-partner-admin-link, partner-admin-link) are managed by scripts/init-from-template.sh ******
-->

![Github Actions](https://github.com/appvia/terraform-azurerm-partner-admin-link/actions/workflows/terraform.yml/badge.svg)

# Terraform Partner Admin Link

## Description

Links an Azure Partner ID (MPN ID) to a subscription via the [Microsoft Partner Admin Link (PAL)](https://learn.microsoft.com/en-us/partner-center/marketplace-offers/link-partner-id-usage-telemetry) mechanism, so Microsoft can attribute the resources deployed in the subscription to the partner for usage and co-sell credit.

## Usage

```hcl
module "partner_admin_link" {
  source  = "appvia/partner-admin-link/azurerm"
  version = "0.0.1"

  partner_id = 6098754
}
```

## Examples

See the [examples](./examples) directory for working usage examples.

- [Basic](./examples/basic) - A basic example of how to use this module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.11 |
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | ~> 2.11 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_azapi"></a> [azapi](#provider\_azapi) | ~> 2.11 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [azapi_resource_action.management_partner](https://registry.terraform.io/providers/Azure/azapi/latest/docs/resources/resource_action) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_partner_id"></a> [partner\_id](#input\_partner\_id) | The Microsoft Partner Network (MPN) ID to link to the subscription. | `number` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Contributing

Contributions are welcome. Please read the [Code of Conduct](./CODE_OF_CONDUCT.md) before contributing.

## License

This project is licensed under the terms of the [GPL-3.0 license](./LICENSE).
