resource "aws_sqs_queue" "main" {
    name = "sqs"
    tags = {
        enviorment = var.env
        Name = format("%s-sqs", var.env)  # dev-sqs, qa-sqs, stage-sqs, prod-sqs
    }     
}