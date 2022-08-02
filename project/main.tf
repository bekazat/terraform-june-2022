resource "aws_route53_zone" "moneroinc" {
  name = "moneroinc.net"

}

resource "aws_route53_record" "nameserver" {
  name    = "moneroinc.net"
  ttl     = 3600
  type    = "NS"
  zone_id = aws_route53_zone.moneroinc.zone_id

  records = aws_route53_zone.moneroinc.name_servers

}