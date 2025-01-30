resource "aws_instance" "webserver" {
  count = 3  
  ami                    = var.ami
  instance_type          = var.environment == "prod" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.new_security_group.id]

#   tags = var.instance_tags[count.index]

    tags = {
      
      Name = var.instance_tags[count.index] 
    }

}

resource "aws_security_group" "new_security_group" {

  name        = "Allow_tls"
  description = "All all inbound and outbound rules"

  ingress {

    description = "allowing all inbound rules"
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  egress {

    description = "allowing all outbound rules"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }

  tags = var.security_tags
}