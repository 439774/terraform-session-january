resource "aws_launch_configuration" "as_conf" {
  name          = "task_scaling_config"
  image_id      = data.aws_ami.amazon_linux_2.id
  instance_type = "t2.micro"
}