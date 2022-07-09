output "id" {
  description = "ID of the EFS"
  value       = try(aws_efs_file_system.efs.id, "")
}