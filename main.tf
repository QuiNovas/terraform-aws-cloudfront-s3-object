resource "aws_s3_bucket_object" "object" {
  bucket                  = "${var.bucket}"
  content                 = "${var.content}"
  content_type            = "${var.content_type}"
  key                     = "${var.key}"
  kms_key_id              = "${var.kms_key_id}"
  server_side_encryption  = "${local.server_side_encryption}"
  tags                    = "${var.tags}"
}

resource "null_resource" "invalidation" {
  provisioner "local-exec" {
    command = "aws cloudfront create-invalidation --distribution-id ${var.distribution_id} --paths ${aws_s3_bucket_object.object.key}"
  }
  triggers {
    id          = "${aws_s3_bucket_object.object.id}"
    key         = "${aws_s3_bucket_object.object.key}"
    version_id  = "${aws_s3_bucket_object.object.version_id}"
  }
}

