resource "aws_instance" "ec2vm" {
  instance_type               = "t2.micro"
  ami                         = "ami-0778521d914d23bc1"
  key_name                    = "onekey"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = [aws_security_group.securitygroup.id]
  associate_public_ip_address = true
  tags = {
    Name       = "ubuntuvm"
    Env        = "prodcution"
    Owner      = "nene"
    CostCenter = "abcd"
  }
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y nginx jq
    echo "<h1> Welcome to Seenu's world <h1> <br/> <h1> 
    his is actually from Terraform on- Public Server - </h1>" | sudo tee /var/www/html/index.nginx-debian.html
    EOF

}