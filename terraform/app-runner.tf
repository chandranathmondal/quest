resource "aws_apprunner_service" "rearc-quest" {
  service_name = "rearc-quest"

  source_configuration {
    authentication_configuration {
      connection_arn = "arn:aws:apprunner:us-east-1:140023402526:connection/chandranathmondal/2c726f319d034f609f9da626cad0257a"
    }
    code_repository {
      code_configuration {
        code_configuration_values {
          build_command = "npm install"
          port          = "3000"
          runtime       = "NODEJS_12"

          runtime_environment_variables = var.env_vars

          start_command = "npm start"
        }
        configuration_source = "API"
      }
      repository_url = "https://github.com/chandranathmondal/quest"
      source_code_version {
        type  = "BRANCH"
        value = var.branch
      }
    }
  }

  tags = {
    Name = "rearc-quest"
  }
}