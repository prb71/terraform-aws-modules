resource "aws_security_group" "ssh-allowed" {
    name        = "allow_ssh"
    vpc_id      = var.vpc_id
    tags        = var.tags
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        // This means, all ip address are allowed to ssh ! 
        cidr_blocks = ["0.0.0.0/0"]
    }
    //If you do not add this rule, you can not reach the instance
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 3000
        to_port = 3000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 3200
        to_port = 3200
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
