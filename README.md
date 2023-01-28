# Introduction:

The module is used to deploy azure resource groups over terraform with a default setup (Infrastructure as Code).

> **_NOTE:_** The required providers, providers configuration and terraform version are maintained in the user's configuration and are not maintained in the modules themselves.

# Example Use of Module:

    module "resource_groups" {

    source      = "github.com/la-cc/terraform-azure-resource-group?ref=1.0.0"

    name        = var.name
    location    = var.location

    }
