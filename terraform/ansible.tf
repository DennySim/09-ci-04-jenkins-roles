resource "null_resource" "wait" {
  provisioner "local-exec" {
    command = "sleep 50"
  }

  depends_on = [
    local_file.inventory
  ]
}

resource "null_resource" "roles_install" {
  provisioner "local-exec" {
    command      = "ansible-galaxy install -r ../requirements.yml --roles-path ../roles"
  }
  depends_on = [
    null_resource.wait
  ]
}


resource "null_resource" "cluster" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../inventory/prod/hosts.yml ../site.yml"
  }

  depends_on = [
    null_resource.roles_install
  ]
}


