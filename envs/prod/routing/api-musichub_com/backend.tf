terraform {
  backend "s3" {
    bucket = "playlisthub-prod-tfstate"
    key    = "portfolio/prod/routing/api-musichub_com_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}