# Define the provider
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
