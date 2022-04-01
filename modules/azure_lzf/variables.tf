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

variable "projectId" {
    type        =   number
}

variable "projectName" {
    type        =   string
}