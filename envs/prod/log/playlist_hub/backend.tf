terraform {
  backend "s3" {
    bucket = "playlisthub-prod-tfstate"
    key    = "portfolio/prod/log/playlist_hub_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}