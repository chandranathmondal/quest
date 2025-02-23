resource "aws_lightsail_container_service" "rearc-quest" {
  name        = "rearc-quest"
  power       = "nano"
  scale       = 1
  is_disabled = false

  tags = {
    Name = "rearc-quest"
  }
}

resource "aws_lightsail_container_service_deployment_version" "rearc-quest" {
  container {
    container_name = "rearc-quest"
    image          = var.image_tag

    command = []

    environment = var.env_vars

    ports = {
      3000 = "HTTP"
    }
  }

  public_endpoint {
    container_name = "rearc-quest"
    container_port = 3000

    health_check {
      healthy_threshold   = 2
      unhealthy_threshold = 2
      timeout_seconds     = 2
      interval_seconds    = 5
      path                = "/"
      success_codes       = "200-499"
    }
  }

  service_name = aws_lightsail_container_service.rearc-quest.name
}
