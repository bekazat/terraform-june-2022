resource "aws_instance" "plg-server" {
    ami = "ami-090fa75af13c156b4"
    instance_type = t2.medium
    tags = {
        Name = "shs-ue1-infra-plg-server"
        Environment = "shs"
        ManagedBy = "tf"
        Owner = "aumarov"
        ProjectName = "AkumoProject2"
        BitnucketURL = "https://bitbucket.org/akumoproject2/shs-ue1-infra-plg-server/src/main/"
    }
    subnet_id = "subnet-0297784a63e8ede2b"
    key_name = "akumoproject-key"
}