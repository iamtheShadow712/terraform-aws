output "aws_instance_public_ip" {
  value = aws_instance.ec2_instance[0].public_ip
}


output "random_id" {
  value = random_id.random_id.hex
}
