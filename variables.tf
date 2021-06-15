//dynamic allocation of instances.
variable "instance_name" {
    description = "Value of the Name tag od EC2 instance"
    type = string 
    default = "ExampleTerraformInstance"

}

variable "instance_type" {
    description = "Value of the instance type EC2 instance"
    type = string 
    default = "t2.micro"
    
}