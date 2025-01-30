resource "aws_instance" "frontend" {
    ami = var.ami # calling variable from variables.tf file
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_Sumanth.id]

    tags = var.ec2_tags
  
}


resource "aws_security_group" "allow_Sumanth" {

    name = "allow_Sumanth"
    description = "Allow all inbound and outbound rules"

    ingress  {

        description = "allowing all inbound rules"
        from_port = var.from_port
        to_port = var.to_port
        protocol = "TCP"
        cidr_blocks = var.cidr_blocks
    }

    egress  {

        description = "allowing all outbound rules"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks =  var.cidr_blocks

    }

 tags = var.sg_tags

}