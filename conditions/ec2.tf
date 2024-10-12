resource "aws_instance" "terraform" {

  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.environment == "prod" ? "t2.micro" : "t3.small"
  #adding security group
  #vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

  tags = {
    Name = "terraform"
  }

}