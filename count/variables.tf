variable "ami" {

  type    = string
  default = "ami-09c813fb71547fc4f"

}


variable "environment" {

  type    = string
  default = "prod"

}

variable "instance_type" {

    type    = string
    default = "prods"

}

variable "from_port" {

  type    = number
  default = 22

}

variable "to_port" {

  type    = number
  default = 22

}


variable "protocol" {

  type    = string
  default = "TCP"

}

# variable "instance_tags" {
#   default = {

#     Name = ["mysql", "frontend" , "backend"]
#   }

# }


variable "instance_tags" {

    default = ["mysql", "frontend" , "backend"]
  
}


# variable "instancename" {
  
#   default = ["frontendsumanth" , "mysql" , "backendsumanth"]

# }

variable "security_tags" {

  default = {

    Name = "Security group server"
  }

}

variable "cidr_blocks" {

  type    = list(string)
  default = ["0.0.0.0/0"]

}

variable "zone_id" {

    default = "Z01287322319F5H91VAPR"
  
}

variable "domain_name" {

    default = "rigglestar.online"
  
}

