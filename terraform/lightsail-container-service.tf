resource "aws_lightsail_container_service" "rearc-quest" {
  name        = "rearc-quest"
  power       = "nano"
  scale       = 1
  is_disabled = false

  tags = {
    Name = "rearc-quest"
  }
}
