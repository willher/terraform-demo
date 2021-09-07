# Default values are optional.  If you have a variable defined in main.tf and no default defined in variables.tf or value in terraform.tfvars, you will be prompted for a value when you run terraform apply
variable "gcp_region" {
  description = "This is a string variable 'Type'"
  type        = string
  default     = "us-central1"
}

variable "gcp_numeric_vaue" {
  description = "Variable files can also use numbers as 'Type'"
  type        = number
  default     = 1
}

variable "gcp_boolean_value" {
  description = "Variable files can also support boolean or bool as 'Type'"
  type        = bool
  default     = false
}

variable "gcp_list_value" {
# Can retreive specific data with cooripsonding key [0] = 1.  Can also retreive a range with slice(List_Variable, first value, end). 
  description = "A List is a Sequence of values of the same 'Type'"
  type        = list(string)
  default = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ]
}

variable "gcp_docker_ports" {
  description = "You can also create a list of objects of different 'Types'"
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
}

variable "gcp_map_values" {
# Can retreive data with the coorisponding key [0] = 1. Can also retreive a range with slice(List_Variable, first value, end). 
  description = "Map values are lookup tables, matching key value pairs, all of the same type"
  type        = map(string)
  default = {
    project    = "string-1"
    enviroment = "string-2"
  }
}

