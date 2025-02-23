output "app_runner_service_url" {
  value = aws_apprunner_service.rearc-quest.service_url
}

output "lightsail_container_service_url" {
  value = aws_lightsail_container_service.rearc-quest.url
}
