resource "aws_efs_file_system" "efs" {
  count = var.create_efs ? 1 : 0

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
  count = var.create_efs ? length(var.subnets) : 0

  file_system_id  = aws_efs_file_system.efs.id
  subnet_id       = var.subnets[count.index]
  security_groups = var.security_groups
}