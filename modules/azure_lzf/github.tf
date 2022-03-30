
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