resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = "${var.project}-tf-state"

  tags = {
    description = "S3 bucket for terraform remote backend"
    app         = var.project
    owner       = var.owner
  }
}
