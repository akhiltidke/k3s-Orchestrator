Here is the human-centric README for your k3s Home Lab. I’ve written this to sound like a personal engineering blog post—focusing on your "why," the problems you solved, and the actual hands-on learning you gained from building a 4-node cluster on Ubuntu.

The K3s Home Lab: My Cloud-Native Sandbox
Why I Built This
While I spend my workdays managing enterprise-grade SAP landscapes at InfraBeat Technologies, I wanted a personal space where I could "break things" to truly understand the Kubernetes undercurrents. I chose k3s for this 4-node cluster because it’s lightweight enough to run on my local Ubuntu VMs but powerful enough to handle production-grade scenarios like GitOps and Rolling Updates.

The Setup

Infrastructure: 4 Nodes (1 Master, 3 Workers) running on standard Ubuntu images.


Orchestration: K3s—chosen for its resource efficiency and built-in Traefik ingress.


Provisioning: Automated the VM lifecycle using Terraform to ensure I can tear down and rebuild the entire lab in minutes.


Configuration: Ansible playbooks handle the k3s installation, node joining, and OS-level hardening.

Real-World Scenarios I’m Solving
This lab isn't just a "hello world" setup; I use it to experiment with:


Zero-Downtime Deployments: I’ve spent time fine-tuning deployment manifests to master rolling updates, ensuring that my microservices stay up even while I'm pushing new code.

Observability Stack: I’ve deployed Prometheus and Grafana (via Helm) to monitor node pressure and pod health—applying the same logic that helped me save 11% on AWS costs in my professional projects.


Ingress & Traffic Flow: Managing how external traffic hits my hybrid containerized microservices using K3s-native ingress controllers.


GitOps Workflow: Experimenting with a "Single Source of Truth" where any change pushed to this repo is automatically reconciled by the cluster.

What I’ve Learned So Far
Building this lab taught me more about networking, resource limits, and stateful sets than any certification ever could. It’s a continuous work in progress where I’m currently testing IaC pipelines to make the transition from "code to cluster" even smoother.

How to Use This Repo
Spin up the VMs: cd terraform && terraform apply

Bootstrap the Cluster: ansible-playbook -i inventory.ini k3s-setup.yml

Deploy a Service: kubectl apply -f manifests/sample-app.yaml

About the Author
I’m a Senior Cloud Engineer with 4+ years of experience. When I’m not scaling production databases for clients like MG-Motors, I’m likely here, tweaking this cluster.


LinkedIn: in/akhil-tidke-964485152 


Work: InfraBeat Technologies Pvt
