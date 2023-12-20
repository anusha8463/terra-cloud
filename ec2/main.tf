#security group
resource "aws_security_group" "webserver_access" {
        name = "webserver_access_sg"
        description = "allow ssh and http"

        ingress {
                from_port = 80
                to_port = 80
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }

        ingress {
                from_port = 22
                to_port = 22
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }

        egress {
                from_port = 0
                to_port = 0
                protocol = "-1"
                cidr_blocks = ["0.0.0.0/0"]
        }


}

resource "aws_instance" "ourfirst" {
  ami           = "ami-0fe8bec493a81c7da"
  availability_zone = "eu-north-1a"
  instance_type = "t3.micro"
  security_groups = ["${aws_security_group.webserver_access.name}"]
  key_name = "unixkeypair"
  user_data = filebase64("install_apache.sh")
  tags = {
    Name  = "ec2-test"
    Location = "Stockholm"
  }

}
