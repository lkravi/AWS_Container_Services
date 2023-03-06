resource "aws_ecr_repository" "ecr_demo" {
  name                 = "ecr_demo"
  image_tag_mutability = "MUTABLE"

}

output "arn" {
  value = aws_ecr_repository.ecr_demo.arn
}

output "registry_id" {
  value = aws_ecr_repository.ecr_demo.registry_id
}

output "repository_url" {
  value = aws_ecr_repository.ecr_demo.repository_url
}