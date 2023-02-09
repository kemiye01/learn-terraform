resource "aws_instance" "demo_server" {
  ami                    = "ami-00874d747dde814fa"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.Public_subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name               = aws_key_pair.ssh_key.key_name
  tags = {
    Name = "demoserver"
    Env  = "dev"
  }
}

resource "aws_key_pair" "ssh_key" {
  key_name   = "ssh-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCe3brMV65ll5PTAQb8sLSZOxPYAic/thxPFCmrPUb6z82a8wIz5oDL+3Ik8o20+g0Z3oS6Fa6cwzzkYifE6DNqkJMzpnuLQsUwgS48bHnJi6YJhrHRVukP39DfggmJjjZJ0Ig+XTWnQFWteCK8UBaSq+x71FUgreCatvgqw2P1ZJ89Py91zmlJ59T3NHYIlCu10GusOk75sejKIAqFUu/NJ5Z1dmSLCrC0EWFD99G/jj0ad0lCm2+cWm+8tWdljasaeFMzA2WHrKaer7eL8+qQfiMopvZGxKKk1719xQ0mykr4eQzDJOfq+YXpz46edyXzdXSP2Zjt9OjMBDtGmINO4/44yArZ6SXa+ifLaTrd+DkOxoTtV8Bs6tRu5czcmTKIdTZy6YD/hXBhCFXawO1EkB+Zs+D3DYcsWoFJcTfh/Y5h7zvFJgMrt6USyAfxYLEiil31OxMQOg0I0rfw0w2s3Km/EMjmIozJBqXPG5tdFoA+BpAvSfIHYm9Hk1vwvi0= lbena@LAPTOP-QB0DU4OG"
}