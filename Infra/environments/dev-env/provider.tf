# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
provider "aws" {
  region  = "ap-northeast-1"
  default_tags {
    tags = {
      provisioner 	    = "terraform"
      env         	    = "dev"
      github-repository = "demo-infra"
    }
  }
}
