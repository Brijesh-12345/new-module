env        = "prod"
app_name  = "webapp"

ami          = "ami-0b6c6ebed2801a5cb"
instance_type = "t2.micro"
key_name     = "terra-key"
db_username  = "admin"
db_password  = "StrongDB#2026"
asg_min     = 1
asg_max     = 2
asg_desired = 1
