resource "aws_ssm_parameter" "lb_external_arn" {
  type = "String"
  name = "/${var.project_name}/lb/external/arn"
  value = module.cluster.lb_external_arn
}

resource "aws_ssm_parameter" "lb_external_listener_arn" {
  type = "String"
  name = "/${var.project_name}/lb/external/listener"
  value = module.cluster.lb_external_listener
}

resource "aws_ssm_parameter" "lb_internal_arn" {
  type = "String"
  name = "/${var.project_name}/lb/internal/arn"
  value = module.cluster.lb_internal_arn
}

resource "aws_ssm_parameter" "lb_internal_listener_arn" {
  type = "String"
  name = "/${var.project_name}/lb/internal/listener"
  value = module.cluster.lb_internal_listener
}

resource "aws_ssm_parameter" "service_discovery_cloudmap_name" {
  type = "String"
  name = "/${var.project_name}/service-discovery/cloudmap/name"
  value = module.cluster.service_discovery_cloudmap_name
}

resource "aws_ssm_parameter" "service_discovery_cloudmap_id" {
  type = "String"
  name = "/${var.project_name}/service-discovery/cloudmap/id"
  value = module.cluster.service_discovery_cloudmap
}

resource "aws_ssm_parameter" "service_discovery_service_connect_name" {
  type = "String"
  name = "/${var.project_name}/service-discovery/service-connect/name"
  value = module.cluster.service_discovery_service_connect_name
}

resource "aws_ssm_parameter" "service_discovery_service_connect_id" {
  type = "String"
  name = "/${var.project_name}/service-discovery/service-connect/id"
  value = module.cluster.service_discovery_service_connect
}

resource "aws_ssm_parameter" "vpc_link" {
  type = "String"
  name = "/${var.project_name}/vpc-link/id"
  value = module.cluster.vpc_link
}


resource "aws_ssm_parameter" "vpc_link_arn" {
  type = "String"
  name = "/${var.project_name}/vpc-link/arn"
  value = module.cluster.vpc_link_arn
}