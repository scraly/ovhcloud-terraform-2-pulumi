resource "ovh_cloud_project_kube" "mykube" {
  service_name = var.service_name
  name         = "my_desired_cluster"
  region       = "GRA5"
}

resource "local_file" "kubeconfig" {
  content     = ovh_cloud_project_kube.mykube.kubeconfig
  filename    = "my_desired_cluster.yml"
}

resource "ovh_cloud_project_kube_nodepool" "node_pool" {
  service_name	= ovh_cloud_project_kube.mykube.service_name
  kube_id	    = ovh_cloud_project_kube.mykube.id
  name          = "my-desired-pool" //Warning: "_" char is not allowed!
  flavor_name   = "b2-7"
  desired_nodes = 1 // change this from 1 to 0 and then apply
  max_nodes     = 3
  min_nodes     = 1
}