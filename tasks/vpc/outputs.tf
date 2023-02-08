output "vpc_id" {
  value       = aws_vpc.task_vpc.id
  description = "The public IP address of main EC2 instance"
}