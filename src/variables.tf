variable "bucket_name" {
  default     = "backend_terraform"
  description = "Bucket responsável por armazenar os states do terraform"
}
variable "region" {
  default     = "us-east-1"
  description = "Região utilizada na conta aws"
}

variable "versionamento" {
  default     = false
  description = "Habilitar versionamento no bucket"
}


variable "key_state" {
  default     = "tfstate.out"
  description = "Key que será utilizada para armazenar o state"
}


variable "profile" {
  default     = "test"
  description = "Profile que será utilizada para armazenar o state"
}
