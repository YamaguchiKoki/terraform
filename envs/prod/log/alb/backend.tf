terraform {
  backend "s3" {
    bucket = "playlisthub-prod-tfstate"
    key    = "portfolio/prod/log/alb_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}