variable "storage" {
  type = number
  description = "this is the size required"
}


variable "engine" {
    type = string
    description = "what should be the engine (mySQL or Postgre?)"
}


variable "instance_class" {
  type = string
  description = "class of instance"
}

variable "username" {
  type = string
  description = "username"
}


variable "password" {
  type = string
  description = "pass"
  sensitive = true
}


variable "subnet_ids" {
  description = "list of subnet IDs for the DB subnet group"
  type = list(string)
}