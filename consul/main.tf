provider "aws" {
    access_key = ""
    secret_key = ""
    region = "eu-central-1"
}

module "consul" {
    source = "github.com/hashicorp/consul/terraform/aws"
    ami ="ami-e61419fb"

    key_name = "consul"
    key_path = "/home/julius/.ssh/aws_consul.pem"
    region = "eu-central-1"
    servers = "3"
}
