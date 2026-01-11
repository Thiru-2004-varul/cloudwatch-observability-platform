data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

}

resource "aws_launch_template" "this" {
    name_prefix = "Observability-lt-"
    image_id = data.aws_ami.ubuntu.id
    instance_type = "t3-micro"

    lifecycle {
      create_before_destroy = true
    }

    tag_specifications {
      resource_type = "instance"
       tags = {
        Name="observability-instance"
       }
    }
  
}

resource "aws_autoscaling_group" "this" {
  name                = var.asg_name
  min_size            = var.min_size
  max_size            = var.max_size
  desired_capacity    = var.desired_capacity
  vpc_zone_identifier = []

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }

  health_check_type         = "EC2"
  health_check_grace_period = 300

  tag {
    key                 = "Name"
    value               = var.asg_name
    propagate_at_launch = true
  }
}
