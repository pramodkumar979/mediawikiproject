output "autoscaling_id" {
  value = aws_eks_node_group.main.resources[*].autoscaling_groups[0].name
}