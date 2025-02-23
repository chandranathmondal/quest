variable "region" {
  type = string
}

variable "branch" {
  type = string
}

variable "env_vars" {
  type = map(string)
}

variable "image_tag" {
  type = string
}
