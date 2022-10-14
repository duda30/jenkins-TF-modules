
module "back-end-s3" {
  source = "./modules/back-end-S3"

  bucket-name = "my-bucket-mary-maria12312"
  key-remote-backend = "desafio-jenkins/primeira-tentativa/terraform.tfstate"
  bucket-region = "us-east-2"
  bucket-acl = "private"
  bucket-versioning = "Enabled"
}

module "computing-module" {
    source = "./modules/computing-module"

    eip_id = "eipalloc-0a791b96d2310c1a2"
    vpc_id = "vpc-0b769f0fdcf9ef629"
    instance-type = "t2.micro"
    ssh-key-name = "mary-key"
    record-route53-name = "www.maria.jenkins.juliocesarpavan.com.br"
    record-route53-type = "A"
}

module "network-module" {
    source = "./modules/network-module"

    vpc_id = "vpc-0b769f0fdcf9ef629"
    cidr_block = "192.168.5.0/24"
}