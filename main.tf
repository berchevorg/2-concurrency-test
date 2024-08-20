#resource "null_resource" "sleep" {
#  provisioner "local-exec" {
#    command = "sleep 240"
#  }
#  triggers = {
#    run_every_time = uuid()
#  }
#}

data "tfe_workspace" "test" {
  name         = "cli" #cli, 1-concurrency-test
  organization = "new-free" #new-free,georgi-berchev
}

output "name" {
  value = data.tfe_workspace.test.id
}
