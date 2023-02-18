resource "aws_launch_configuration" "as_conf" {
  name          = "aws-${var.team}-${var.env}-${var.app}-launch_config-${var.index}"
  image_id      = data.aws_ami.amazon_linux_2.id
  instance_type = "t2.micro"
  tags          = local.common_tags
}