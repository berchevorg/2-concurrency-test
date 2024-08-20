#resource "null_resource" "sleep" {
#  provisioner "local-exec" {
#    command = "sleep 240"
#  }
#  triggers = {
#    run_every_time = uuid()
#  }
#}

data "tfe_workspace" "test" {
  name         = "1-concurrency-test"
  organization = "georgi-berchev"
}

output "name" {
  value = data.tfe_workspace.test.id
}
