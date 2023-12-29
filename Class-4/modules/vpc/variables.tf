variable cidr_block {
    type        = string 
    description ="CIDR range for VPC"
}

variable vpc_tags {
    type     = map
    default  = {
        name = "myVPC"
    }
    description = "VPC tags"
}

variable ig_tags {
    type     = map
    default  = {
        name = "myIG"
    }
    description = "internet gateway tags"
}

variable subnet1_cidr_block {
    type        = string
    description = "CIDR range for subnet1"
}

variable  subnet1_az {
    type        = string
    description = "subnet1 AZ"
}

variable  subnet2_az {
    type        = string
    description = "subnet2 AZ"
}

variable  subnet2_az {
    type        = string
    description = "subnet3 AZ"
}

variable subnet1_tags {
    type     = map
    default  = {
        name = "subnet1"
    }
    description = "subnet1 tags"
}

variable subnet2_cidr_block {
    type        = string
    description = "CIDR range for subnet2"
}


variable subnet2_tags {
    type     = map
    default  = {
        name = "subnet2"
    }
    description = "subnet2 tags"
}

variable subnet3_cidr_block {
    type        = string
    description = "CIDR range for subnet3"
}


variable subnet3_tags {
    type     = map
    default  = {
        name = "subnet3"
    }
    description = "subnet3 tags"
}