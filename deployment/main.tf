module "cluster" {
  # source = "/home/thiago/Documents/GitProjects/arq-containers-aws/linuxtips-containers-aws-modules/cluster"
  source = "github.com/thiagomdiniz/linuxtips-containers-aws-modules.git//cluster"

  project_name = var.project_name
  region       = var.region

  vpc_id          = data.aws_ssm_parameter.vpc.value
  private_subnets = data.aws_ssm_parameter.private_subnets[*].value
  public_subnets  = data.aws_ssm_parameter.public_subnets[*].value

  acm_certs = data.aws_acm_certificate.main[*].arn
}