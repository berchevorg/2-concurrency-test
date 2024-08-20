#resource "null_resource" "sleep" {
#  provisioner "local-exec" {
#    command = "sleep 240"
#  }
#  triggers = {
#    run_every_time = uuid()
#  }
#}

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "env"
  }
  triggers = {
    run_every_time = uuid()
  }
}

resource "tfe_workspace" "test2" {
  name         = "my-workspace-name"
  organization = "georgi-berchev" 
}

data "tfe_workspace" "test" {
  name         = "1-concurrency-test" #cli, 1-concurrency-test
  organization = "georgi-berchev" #new-free,georgi-berchev
}

output "name" {
  value = data.tfe_workspace.test.id
}

