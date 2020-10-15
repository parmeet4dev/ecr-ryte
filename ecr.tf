
data "template_file" "policy" {
  template = "${file("${path.module}/policy.json")}"
  # vars = {
  #     repo-name = var.name
  #   }
}


module "repository" {
  source = "./modules/ECR-Demo"
  #   version = "~> 0.2.0"

  name = var.name

  immutable = true
  tags = {
    CreatedAt = "2020-12-10",
    CreatedBy = "Parmeet"
  }

  policy = "${data.template_file.policy.rendered}"
}