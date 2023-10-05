# terraform-all-in-one

![Semantic Release](https://github.com/m4s-b3n/terraform-all-in-one/actions/workflows/test-and-release.yml/badge.svg)

Run common Terraform commands in a single GitHub action

## Usage

```yaml
name: Deploy
on:
  push:
    branches: ["main"]
  pull_request:
    branches: ["main"]

jobs:
  deploy:
    name: Deploy And Destroy
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Deploy
        uses: "m4s-b3n/terraform-all-in-one@v1.0.0"
        with:          
          directory: "./terraform"
          apply: true
      - name: Destroy
        uses: "m4s-b3n/terraform-all-in-one@v1.0.0"
        with:          
          directory: "./terraform"
          setup: false
          init: false
          format: false
          validate: false
          plan: false
          apply: false
          destroy: true
```

You can configure additional command arguments with inputs. 

## Inputs

| Input Name | Description | Required | Default |
|------------|-------------|----------|---------|
| directory | The directory where the Terraform configuration files are located | false | . |
| terraform-version | The version of Terraform to use | false | latest |
| plan-file | The path to the plan file | false | plan.json |
| init-args | The arguments to pass to terraform init | false |  |
| validate-args | The arguments to pass to terraform validate | false |  |
| fmt-args | The arguments to pass to terraform fmt | false | -check |
| plan-args | The arguments to pass to terraform plan | false |  |
| apply-args | The arguments to pass to terraform apply | false |  |
| destroy-args | The arguments to pass to terraform destroy | false |  |
| setup | Whether to setup | false | true |
| init | Whether to init | false | true |
| format | Whether to format | false | true |
| validate | Whether to validate | false | true |
| plan | Whether to plan | false | true |
| apply | Whether to apply | false | false |
| destroy | Whether to destroy | false | false |

## Outputs

| Output Name | Description | Value |
| --- | --- | --- |
| output-json | JSON formatted terraform output | ${{ steps.apply.outputs.output-json }} |

## Changelog
See the [Changelog](./CHANGELOG.md) file for details