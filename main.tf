resource "aws_efs_file_system" "efs" {
  creation_token = var.name
  encrypted      = var.encrypted

  tags = merge(
    {
      Name = var.name
    }, 
    var.tags
  )
}

resource "aws_efs_mount_target" "efs_mt" {
  count = length(var.subnets)

  file_system_id  = aws_efs_file_system.efs.id
  subnet_id       = var.subnets[count.index]
  security_groups = var.security_groups
}