output "instance_id" {
  value = aws_instance.group1_ec2.id
}

output "assessment_target_arn" {
  value = aws_inspector_assessment_target.group1_target.arn
}
