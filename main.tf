resource "null_resource" "test" {
  triggers = {
    xyz = timestamp()
  }
  provisioner "remote-exec" {
    command = "echo Hello World - Env - ${var.env}"
  }
}