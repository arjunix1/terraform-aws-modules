variable "instance_type" {
    default = "t3.micro"
    type = string
    description = "EC2 instance type of arjun"
}

variable "ami_ubuntu" {
    default = "ami-0ecb62995f68bb549"
    description = "EC2 instance of ubuntu"
    type = string 
}


variable "ami_redhat" {
    default = "ami-069e612f612be3a2b"
    type = string
    description = "EC2 instance of Redhat"
  
}