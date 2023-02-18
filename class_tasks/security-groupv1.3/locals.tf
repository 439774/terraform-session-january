locals {
    name = "aws-${var.team}-${var.env}-${var.app}-resource-${var.index}"
    common_tags = {
        Environment = var.env
        Team = var.team
        App = var.app
        Managed_By = var.managed_by
        Owner = var.owner
    }
}