resource "aws_sqs_queue" "main" {
    count = length(var.env[*])
    name = "${var.env[count.index]}-sqs"
    tags = {
        enviorment = var.env
        Name = format("${var.env[count.index]}-sqs", var.env)  # dev-sqs, qa-sqs, stage-sqs, prod-sqs
    }     
}