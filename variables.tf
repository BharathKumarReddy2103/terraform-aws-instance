 variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of the EC2 instance"
}

variable "subnet_id" {
  type        = string
  default = "subnet-027e9b95abbffe496"
  description = "subnet ID of bharath RHEL9"
}

# EC2 instance type variable with validation for allowed values
variable "instance_type" {
    default = "t3.micro"
    type = string
    description = "Instance size"

    validation {
        condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "Valid values for instance_type are: t3.micro, t3.small, t3.medium"
    } 
}

# mandatory to provide
variable "sg_ids" {
    type = list
}

variable "tags" {
    type = map
}