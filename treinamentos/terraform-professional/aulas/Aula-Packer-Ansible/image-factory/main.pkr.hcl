// To make Packer read these variables from the environment into the var object,
// set the environment variables to have the same name as the declared
// variables, with the prefix PKR_VAR_.

// There are other ways to [set variables](/packer/docs/templates/hcl_templates/variables#assigning-values-to-build-variables)
// including from a var file or as a command argument.

// export PKR_VAR_aws_access_key=$YOURKEY
variable "aws_access_key" {
  type = string
  // default = "hardcoded_key"
}

// export PKR_VAR_aws_secret_key=$YOURSECRETKEY
variable "aws_secret_key" {
  type = string
  // default = "hardcoded_secret_key"
}

source "amazon-ebs" "base" {
  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      name                = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
      root-device-type    = "ebs"
    }
    owners      = ["099720109477"]
    most_recent = true
  }

  instance_type = "t2.micro"
  ssh_username  = "ubuntu"
  ami_name      = "Imagem Base {{timestamp}}"
}

build {
  sources = [
    "source.amazon-ebs.base"
  ]

  provisioner "ansible" {
    playbook_file   = "./ansible/playbook.yml"
    user            = "ubuntu"
    extra_arguments = ["--become"]
  }

}
