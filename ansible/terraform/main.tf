# Standardizing on Ubuntu for the k3s nodes
resource "local_vm" "k3s_nodes" {
  count = 4
  name  = "k3s-node-${count.index}"
  image = "ubuntu-22.04-server-cloudimg-amd64.img" # cite: user prompt
  
  # k3s is lightweight, so we can be efficient with resources
  cpus   = 1 
  memory = 2048 
  
  tags = {
    Role = count.index == 0 ? "Master" : "Worker"
    Lab  = "Home-K3s"
  }
}
