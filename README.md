# terraform-all-in-one

![Release](https://github.com/infinite-automations/terraform-all-in-one/actions/workflows/release.yml/badge.svg)

Run common Terraform commands in a single GitHub action

<!-- action-docs-all source="action.yml" project="infinite-automations/terraform-all-in-one" version="0.0.0" -->
## Description

Apply Terraform Configuration

## Inputs

| name | description | required | default |
| --- | --- | --- | --- |
| `directory` | <p>The directory where the Terraform configuration files are located</p> | `false` | `.` |
| `test-directory` | <p>The directory where the Terraform test configuration files are located</p> | `false` | `.` |
| `terraform-version` | <p>The version of Terraform to use</p> | `false` | `latest` |
| `plan-file` | <p>The path to the plan file</p> | `false` | `plan.json` |
| `common-args` | <p>The arguments to pass to all terraform commands</p> | `false` | `""` |
| `init-args` | <p>The arguments to pass to terraform init</p> | `false` | `""` |
| `validate-args` | <p>The arguments to pass to terraform validate</p> | `false` | `""` |
| `fmt-args` | <p>The arguments to pass to terraform fmt</p> | `false` | `-check` |
| `test-args` | <p>The arguments to pass to terraform test</p> | `false` | `""` |
| `plan-args` | <p>The arguments to pass to terraform plan</p> | `false` | `""` |
| `apply-args` | <p>The arguments to pass to terraform apply</p> | `false` | `""` |
| `destroy-args` | <p>The arguments to pass to terraform destroy</p> | `false` | `""` |
| `setup` | <p>Whether to setup</p> | `false` | `true` |
| `init` | <p>Whether to init</p> | `false` | `true` |
| `format` | <p>Whether to format</p> | `false` | `true` |
| `validate` | <p>Whether to validate</p> | `false` | `true` |
| `test` | <p>Whether to test</p> | `false` | `false` |
| `plan` | <p>Whether to plan</p> | `false` | `true` |
| `apply` | <p>WHether to apply</p> | `false` | `false` |
| `destroy` | <p>Whether to destroy</p> | `false` | `false` |


## Outputs

| name | description |
| --- | --- |
| `output-json` | <p>JSON formatted terraform output</p> |


## Runs

This action is a `composite` action.

## Usage

```yaml
- uses: infinite-automations/terraform-all-in-one@0.0.0
  with:
    directory:
    # The directory where the Terraform configuration files are located
    #
    # Required: false
    # Default: .

    test-directory:
    # The directory where the Terraform test configuration files are located
    #
    # Required: false
    # Default: .

    terraform-version:
    # The version of Terraform to use
    #
    # Required: false
    # Default: latest

    plan-file:
    # The path to the plan file
    #
    # Required: false
    # Default: plan.json

    common-args:
    # The arguments to pass to all terraform commands
    #
    # Required: false
    # Default: ""

    init-args:
    # The arguments to pass to terraform init
    #
    # Required: false
    # Default: ""

    validate-args:
    # The arguments to pass to terraform validate
    #
    # Required: false
    # Default: ""

    fmt-args:
    # The arguments to pass to terraform fmt
    #
    # Required: false
    # Default: -check

    test-args:
    # The arguments to pass to terraform test
    #
    # Required: false
    # Default: ""

    plan-args:
    # The arguments to pass to terraform plan
    #
    # Required: false
    # Default: ""

    apply-args:
    # The arguments to pass to terraform apply
    #
    # Required: false
    # Default: ""

    destroy-args:
    # The arguments to pass to terraform destroy
    #
    # Required: false
    # Default: ""

    setup:
    # Whether to setup
    #
    # Required: false
    # Default: true

    init:
    # Whether to init
    #
    # Required: false
    # Default: true

    format:
    # Whether to format
    #
    # Required: false
    # Default: true

    validate:
    # Whether to validate
    #
    # Required: false
    # Default: true

    test:
    # Whether to test
    #
    # Required: false
    # Default: false

    plan:
    # Whether to plan
    #
    # Required: false
    # Default: true

    apply:
    # WHether to apply
    #
    # Required: false
    # Default: false

    destroy:
    # Whether to destroy
    #
    # Required: false
    # Default: false
```
<!-- action-docs-all source="action.yml" project="infinite-automations/terraform-all-in-one" version="0.0.0" -->

## Changelog

See the [Changelog](./CHANGELOG.md) file for details
