resource "aws_instance" "devserver" {
  ami = "ami-0d682f26195e9ec0f"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_sub_1.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  user_data = file ("httpd.sh")
  
}

resource "aws_security_group" "sg" {
  name = ragusg
  vpc_id = aws_vpc.dynamic_vpc.id

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "ragusg"
  }
}

