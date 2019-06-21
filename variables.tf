variable "function_name" {
  description = "Propietario del proyecto"
  type        = string
}

variable "source_types" {
  description = "Tipos de fuentes que pueden invocar el Lambda. Debe alinearse con las entradas en la variable source_arn"
  type        = "list"
  default     = []
}

variable "source_arns" {
  description = "Fuente de los ARN que pueden invocar el Lambda. Debe alinearse con las entradas en la variable source_types"
  type        = "list"
}
