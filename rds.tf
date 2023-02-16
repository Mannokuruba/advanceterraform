
resource "aws_db_subnet_group" "example" {
  name        = "example-subnet-group"
  subnet_ids  = ["subnet-0ac439459fbdd1427", "subnet-0d5a13a138a96a2bf"]
  description = "Example subnet group"
}

resource "aws_db_instance" "example" {
  identifier             = "example-db"
  allocated_storage      = 10
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  name                   = "manno"
  username               = "manno"
  password               = "manno12345"
  db_subnet_group_name   = aws_db_subnet_group.example.name
  vpc_security_group_ids = ["sg-077f32dfd714b51a0"]
}

output "rds_endpoint" {
  value = aws_db_instance.example.endpoint
}
