locals {
  server_side_encryption = "${length(var.kms_key_id) > 0 ? "aws:kms" : "AES256"}"
}