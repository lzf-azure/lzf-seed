variable "projectId" {
    type        =   number
}

variable "projectName" {
    type        =   string
}

variable "developers" {
    type        =   map(string)
    description =   "Developer rights on GH and Azure. GH usernames with Azure AD mail. Example {'myghuser'='firstname.lastname@somedomain.com'}"
    default     = {
        # "myghuser"  =   "firstname.lastname@somedomain.com"
    }
}
 
variable "admins" {
    type        =   map(string)
    description =   "Admin rights on GH and Azure. GH usernames with Azure AD mail. Example {'myghuser'='firstname.lastname@somedomain.com'}"
    default     = {
        # "myghuser"  =   "firstname.lastname@somedomain.com"
    }
}
 
variable "repositories" {
    description     =   "The list of repositories to create for application code"
    type            =   map(object({
        name        =   string
        about       =   string
    }))
    default         = {
        #   myreponame  = {name="friendly name", about="about content"}
    }
}