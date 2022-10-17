module "back-end-s3" {
  source = "./back-end-S3"

  bucket-name        = "my-bucket-mary-maria12312"
  key-remote-backend = "desafio-jenkins/usando-modulos/terraform.tfstate"
  bucket-region      = "us-east-2"
  bucket-acl         = "private"
  bucket-versioning  = "Enabled"
}

module "computing-module" {
  source = "./computing-module"

  eip_id              = "eipalloc-0a791b96d2310c1a2"
  vpc_id              = "vpc-0b769f0fdcf9ef629"
  instance-type       = "t2.micro"
  ssh-key-name        = "mary-key"
  record-route53-name = "www.maria.jenkins.juliocesarpavan.com.br"
  record-route53-type = "A"
  subnet_id           = data.aws_subnet.id-subnet.id
}

module "network-module" {
  source = "./network-module"

  vpc_id                = "vpc-0b769f0fdcf9ef629"
  aws_subnet_cidr_block = ["192.168.5.0/24"]
}