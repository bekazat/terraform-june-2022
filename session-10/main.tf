module "s3" {
    source = "github.com/aKumoSolutions/terraform-june-2022//modules/s3"
    env = "dev"
    my_name = "azat"

}
module "ec2" {
    source = ""
}