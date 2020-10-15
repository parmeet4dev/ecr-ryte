resource "aws_ecr_repository" "repository" {
  name                 = var.name
  image_tag_mutability = var.immutable ? "IMMUTABLE" : "MUTABLE"
  tags                 = var.tags

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
}

resource "aws_ecr_repository_policy" "policy" {
  count      = var.policy == null ? 0 : 1
  repository = aws_ecr_repository.repository.name
  policy     = var.policy
}

