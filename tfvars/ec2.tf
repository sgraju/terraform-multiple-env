resource "aws_instance" "terraform" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = merge(
    local.common_tags,
    {
      Name = "${local.common_name}-tfvars-mllti-env"
    }
  )
}

resource "aws_security_group" "allow_all" {
  name   = "${local.common_name}-tfvars-mllti-env"

  egress {
        from_port   = var.egress_from_port
        to_port     = var.egress_to_port
        protocol    = var.protocol
        cidr_blocks = var.cidr_blocks
  }

    ingress {
        from_port    = var.ingress_from_port
        to_port      = var.ingress_to_port
        protocol     = var.protocol
        cidr_blocks  = var.cidr_blocks
    }

    tags = merge(
    local.common_tags,
    {
      Name = "${local.common_name}-tfvars-mllti-env"
    }
  )
}   