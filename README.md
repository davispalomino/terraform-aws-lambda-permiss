# AWS Lambda-Permission Function Terraform module
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Terraform module which creates Permission Lambda on AWS, compatible Terraform >= v0.12.1 .

These types of resources are supported:

* [Lambda](https://www.terraform.io/docs/providers/aws/r/lambda_function.html)


## Usage

```hcl
module "lambda_permission" {
    source                = "git::ssh://git@github.com:davispalomino/terraform-aws-lambda-permission.git"
    function_name         = "${module.lambda_fuction.fuction_name}"
    source_types          = ["events"]
    source_arns           = ["arn:aws:events:us-east-1:081713589812:rule/lambda-snapshot-backup-event-prod"]

}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| function_name | Asociar al Lambda Function | string | n/a | yes |
| source\_arns | Fuente de los ARN que pueden invocar el Lambda. Debe alinearse con las entradas en la variable source_types | list | n/a | yes |
| source\_types | Tipos de fuentes que pueden invocar el Lambda. Debe alinearse con las entradas en la variable source_arn | list | `<list>` | yes |

## Authors

Davis Palomino http://101root.blogspot.pe.

## License

Apache 2 Licensed. See LICENSE for full details.