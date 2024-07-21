data "aws_caller_identity" "self" {}
data "aws_region" "current" {}

data "terraform_remote_state" "network_main" {
    backend = "s3"

    config = {
        bucket = "playlisthub-prod-tfstate"
        key = "${local.system_name}/${local.env_name}/network/main_v1.0.0.tfatate"
        region = "ap-northeast-1"
    }
}

data "terraform_remote_state" "routing_api_musichub_com" {
    backend = "s3"

    config = {
        bucket = "playlisthub-prod-tfstate"
        key = "${local.system_name}/${local.env_name}/routing/api-musichub_com_v1.0.0.tfstate"
        region = "ap-northeast-1"
    }
}