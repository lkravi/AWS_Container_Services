data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket  = "terraform-state-202302"
    key     = "containers/network/state.tfstate"
    region  = "us-east-1"
  }
}

output "remote_state" {
  value = data.terraform_remote_state.network.outputs.vpc_id
}