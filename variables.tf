variable "developers" {
    type        =   map(string)
    description =   "GH usernames with Azure AD mail. Example {'myghuser'='firstname.lastname@somedomain.com'}"
}

variable "projectId" {
    type        =   number
}

variable "projectName" {
    type        =   string
}