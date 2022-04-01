
resource "github_team" "developers_team" {
    name        = "developers_${var.projectId}_${var.projectName}"
    privacy     = "closed"
}

resource "github_team" "admins_team" {
    name        = "admins_${var.projectId}_${var.projectName}"
    privacy     = "closed"
}

resource "github_team_membership" "dev_membership" {
    for_each    = var.developers
    team_id     = github_team.developers_team.id
    username    = each.key
    role        = "member" 

}

resource "github_team_membership" "admin_membership" {
    for_each    = var.admins
    team_id     = github_team.admins_team.id
    username    = each.key
    role        = "member" 

}

resource "github_repository" "tf_repo" {
    name            = "tf"
    description     = "Defines all the azure resources"
    # visibility      = "internal" 

    template {
        owner       = "lzf-azure"
        repository  = "tf-seed"
    }

    auto_init               = true
    delete_branch_on_merge  = true 
    has_projects            = false
    has_wiki                = false
    has_issues              = false
}

resource "github_branch" "tf_repo_branch" {
    for_each        = toset( ["dev", "uat", "prod"] )
    repository      = github_repository.tf_repo.name
    branch          =  "azure-stage-${each.key}"
}