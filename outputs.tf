output "public_ip" {
    value = aws_instance.terraform.public_ip
}

output "private_ip" {
    value = aws_instance.terraform.private_ip
}

output "instance_id" { #here name(id or instance_id) can be provided anything, but below value for instance id should be instance_id, also both attribute name and value can be 'id' or attribute is instance_id, then value to be id and its vice-versa
    value = aws_instance.terraform.id
}