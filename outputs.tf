//retrieve instance id and instance public ip address
output "instance_id" {
    description = "ID of the EC2 instance"
    value = aws_instance.appserver.id //resource type that you built in main.tf line 15 in resource type
}
output "public_ip" {
    description = "public ip of the EC2 instance"
    value = aws_instance.appserver.public_ip
}