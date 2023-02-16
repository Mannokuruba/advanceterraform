
resource "aws_instance" "example" {
  ami           = "ami-09cd747c78a9add63"
  instance_type = "t2.micro"
  key_name      = "new"
  
  tags = {
    Name = "example-instanc"
  }
}
