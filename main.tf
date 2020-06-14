resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.autoscaling_attachment_depends_on)
    }
}

resource "aws_autoscaling_attachment" "autoscaling_attachment_terraform" {
    count                  = var.autoscaling_attachment_count
    depends_on             = [null_resource.depends_on]
    autoscaling_group_name = var.autoscaling_attachment_autoscaling_group_name
    alb_target_group_arn   = var.autoscaling_attachment_alb_target_group_arn
}