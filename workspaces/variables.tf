variable "project" {
  default = "roboshop"
}

variable "environment" {
    type = map
    default = {
        dev = "dev"
        prod = "prod"
    }
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = map
    default = {
        dev = "t3.micro"
        prod = "t3.small"
    }
}

variable "cidr_blocks" {
    type = list 
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}