module "demo_root" {
  source = "../../..//modules/infra_module"
  deployment_account     = "personal-account-ujjwal"
  env                    = "dev"
  vpc_availability_zones = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
  vpc_cidr_block         = "172.20.0.0/16"
  vpc_public_subnets     = ["172.20.10.0/24", "172.20.40.0/24"]
  vpc_private_subnets    = ["172.20.20.0/24"]
  vpc_enable_nat_gateway = true
}
