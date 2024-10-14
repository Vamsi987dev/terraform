resource "aws_instance" "terraform" {
    
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    #adding security group
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

    tags = {
    Name = "terraform"
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > public_ip.txt"
  }

  connection {
    type = "ssh"
    user = "ec2-user"
    password = "DevOps321"
    host = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
        "sudo dnf install ansible -y",
        "sudo dnf install nginx -y "

    ]
  }
  provisioner "remote-exec" {
    when = destroy
    inline = [
        "sudo systemctl stop nginx"
    ]
  }

}

resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_sshh"
  description = "allow port number 22 for SSH access"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_sshhn"
  }
}