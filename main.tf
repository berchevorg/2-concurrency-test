resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep 240"
  }
  triggers = {
    run_every_time = uuid()
  }
}
