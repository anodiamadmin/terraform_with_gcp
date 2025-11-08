module "folders" {
  source = "./folders"
}

module "projects" {
  source = "./projects"
  project_name = "anodiam-expt-prj-dev-001"
}

module "compute" {
  source = "./compute"
  depends_on = [module.projects]
}