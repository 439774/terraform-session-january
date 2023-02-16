resource "aws_db_instance" "main" {
  allocated_storage    = 10
  identifier           = replace(local.name, "resource", "rds") # name for RDS instnace
  db_name              = "mydb" # database name inside the RDS instance
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = random_password.db_password.result
  skip_final_snapshot  = var.env != "prod" ? false : true  # it will create a snapshot
  final_snapshot_identifier = var.env != "prod" ? null : "${var.env}-db-final-snapshot"
}

resource "random_password" "db_password" {
  length = 20
  special = true
  override_special = "%@"
}

# var.env == prod ? false : true