# Define the provider
terraform {
  required_version = "~>1.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {}

variable "filename" {
  type        = string
  description = "Name of the file to create"
  default     = "example.dev.txt"
}

# Define the resource
resource "local_file" "example" {
  content  = "Hello, World!"
  filename = "${path.module}/${var.filename}"
}
