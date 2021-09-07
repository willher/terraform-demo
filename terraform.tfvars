resource_tags = {
  project     = "sample-gcp-project",
  environment = "dev",
  owner       = "willis.hertweck@cdw.com"
}

gcp_region        = "us-central1"
gcp_numeric_vaue  = 1
gcp_boolean_value = true
gcp_list_value = [
  1,
  2,
  3,
  4,
  5
]

gcp_docker_ports = {
  "internal" = 8001
  "external" = 8002
  "protocol" = tcp
  }

gcp_map_values = {
  "project1" = "value1"
  "project2" = "value2"
  "project3" = "value3"
}
