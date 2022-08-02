resource "aws_route53_zone" "moneroinc" {
  name = "moneroinc.net"
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.moneroinc.zone_id
  name    = "moneroinc.net"
  type    = "A"
  ttl     = 300
  records = ["107.23.179.231"]
}


resource "aws_route53_record" "nameserver" {
  allow_overwrite = true
  name            = "moneroinc.net"
  ttl             = 3600
  type            = "NS"
  zone_id         = aws_route53_zone.moneroinc.zone_id

  records = aws_route53_zone.moneroinc.name_servers
}

resource "aws_route53_record" "dev" {
  allow_overwrite = true
  name            = "dev.moneroinc.net"
  ttl             = 3600
  type            = "NS"
  zone_id         = aws_route53_zone.moneroinc.zone_id
  records         = aws_route53_zone.moneroinc.name_servers
}