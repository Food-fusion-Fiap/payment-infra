resource "aws_lb_target_group" "tg" {
  name        = "TG-${var.projectName}"
  port        = 30201
  target_type = "instance"
  protocol    = "HTTP"

  vpc_id = var.vpc


  health_check {
    path    = "/payments/quantity"
    port    = 30201
    matcher = "200"
  }
}

resource "aws_lb_target_group_attachment" "attach" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = data.aws_instance.ec2.id
  port             = 30201

}