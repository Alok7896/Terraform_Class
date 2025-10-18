provider "aws"{
    region="eu-north-1"
}

resource "aws_instance" "example" {
  for_each=var.name
  ami           = each.value.ami
  instance_type = each.value.instance_type

  tags = {
    Name = each.value.tags["Name"]
  }
}