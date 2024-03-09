output "public_ip" {
    description = "value"
    value = aws_instance.ex_instance.public_ip
}