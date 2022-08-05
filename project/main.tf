resource "aws_route53_zone" "moneroinc" {
  name = "moneroinc.net"
  tags =  {
    Environment = "prod"
    Owner       = "azaadmin"
    ManagedBy   = "tf"
    ProjectName = "MoneroInc"
  }
}
