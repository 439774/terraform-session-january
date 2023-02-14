resource "aws_sqs_queue" "main" {
    count = length(var.env[*])
    name = format("%s-sqs", var.env[count.index])
    tags = {
        enviorment = format("%s", var.env[count.index])
        Name = format("%s-sqs", var.env[count.index])  # dev-sqs, qa-sqs, stage-sqs, prod-sqs
    }     
}