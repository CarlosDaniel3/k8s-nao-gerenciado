resource "aws_instance" "control_plane" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = var.key_pair
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [aws_security_group.allow_ssh_http.id]
  associate_public_ip_address = true

  tags = {
    Name = "ec2_instance"
  }
}

resource "aws_instance" "worker_node" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  count                       = var.number_of_instances
  key_name                    = var.key_pair
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [aws_security_group.allow_ssh_http.id]
  associate_public_ip_address = true

  tags = {
    Name = "ec2_instance"
  }
}
