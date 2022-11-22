variable "project_id" {
  description = "Your Google Project ID"
}

variable "project_region" {
  description = "Your project region"
  default     = "us-central1"
}

variable "project_zone" {
  description = "Your project zone"
  default     = "us-central1-c"
}

variable "simple_web_app_image" {
  description = "Docker image for simple-web service"
}
