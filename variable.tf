variable "name" {
  type        = map(object({
    ami=string
    instance_type=string
    tags=map(string)
  }))
  default     = {
    test-server={
        ami="ami-0a716d3f3b16d290c"
        instance_type="t3.micro"
        tags={
            Name="UAT"
        }
    }
  }
}

