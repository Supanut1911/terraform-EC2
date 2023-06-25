variable "REGION" {
  default = "ap-southeast-1"
}

variable "ZONE1" {
  default = "ap-southeast-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    ap-southeast-1 = "ami-0df7a207adb9748c7"
    ap-southeast-2 = "ami-0df7a207adb9748c7"
  }
}