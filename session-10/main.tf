module "s3" {
    source = "github.com/aKumoSolutions/terraform-june-2022//modules/s3"
    env = "dev"
    my_name = "azat"

}
module "ec2" {
    source = "github.com/bekazat/terraform-june-2022//modules/ec2"
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    env = "dev"
    s3_bucket_name = module.s3.id
}