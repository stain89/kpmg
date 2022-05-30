#
#
#
locals {
  name   = var.name
  region = var.region
  tags = {
    Owner       = var.owner
    Environment = var.environment
  }

   user_data = <<-EOT
  #!/bin/bash
  echo "Hello KPMG!"
  EOT
}