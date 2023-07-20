resource "aws_route53_record" "component" {
  zone_id = "Z069258112MM0I3IYRYGR"
  name    = var.COMPONENT
  type    = "A"
  ttl     = 10
  records = [aws_spot_instance_request.spot_worker.private_ip]
}