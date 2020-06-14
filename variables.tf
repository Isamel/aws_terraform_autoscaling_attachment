variable "autoscaling_attachment_count" {
    type        = bool
    description = "autoscaling attachment."
}

variable "autoscaling_attachment_depends_on" {
    type        = list(string)
    description = "autoscaling group depends on."
}

variable "autoscaling_attachment_autoscaling_group_name" {
    type        = string
    description = "autoscaling attachment autoscaling group name."
}

variable "autoscaling_attachment_alb_target_group_arn" {
    type        = string
    description = "autoscaling attachment alb target group arn."
}

variable "extra_tags" {
    type        = map(string)
    description = "extra tags."
}