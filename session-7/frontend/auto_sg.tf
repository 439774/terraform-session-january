resource "aws_autoscaling_group" "bar" {
  availability_zones = format(["%s"], var.global_az[0])
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1
  launch_configuration = aws_launch_configuration.as_conf.name
}