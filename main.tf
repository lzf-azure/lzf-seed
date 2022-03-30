module "azure_lzf" {
    source      =   "./modules/azure_lzf"
    developers  =   var.developers
    projectName =   var.projectName
    projectId   =   var.projectId
}