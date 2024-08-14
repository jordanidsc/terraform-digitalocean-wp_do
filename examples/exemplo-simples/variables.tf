variable "region" {
  type    = string
  default = "nyc1"
}

variable "vm_wp_count" {
  type        = number
  default     = 2
  description = "Numero de maquinas para wordpress"
  validation {
    condition     = var.vm_wp_count > 1
    error_message = "O numero de maquinas precisa ser mais que 1, para garantir a disponibilidade."
  }
}

variable "vms_ssh" {
  type = string
  description = "Chave ssh para vms"
}