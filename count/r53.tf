resource "aws_route53_record" "webserver" {
  count = 3  
  zone_id = var.zone_id
  name    = "${var.instance_tags[count.index]}.${var.domain_name}" # Interpolation
  type    = "A"
  ttl     = 300
  records = [aws_instance.webserver[count.index].private_ip] 
}


