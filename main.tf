provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  count               = 1
  identifier          = "${var.cluster_identifier}-${count.index}"
  cluster_identifier  = "${aws_rds_cluster.default.id}"
  instance_class      = "${var.instance_class}"
  engine              = "${var.engine}"
  engine_version      = "${var.engine_version}"
  publicly_accessible = true
  apply_immediately   = true
}

resource "aws_rds_cluster" "default" {
  cluster_identifier      = "${var.cluster_identifier}"
  engine                  = "${var.engine}"
  engine_version          = "${var.engine_version}"
  availability_zones      = "${var.availability_zones}"
  master_username         = "${var.master_username}"
  master_password         = "${var.master_password}"
  backup_retention_period = "${var.backup_retention_period}"
  preferred_backup_window = "${var.preferred_backup_window}"
  preferred_maintenance_window = "${var.preferred_maintenance_window}"
  skip_final_snapshot     = true
  storage_encrypted       = true
}
