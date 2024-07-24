// These are our primary oranization security settings

resource "github_organization_settings" "securing_the_speed" {
    billing_email = "andrewkrug@gmail.com"
    company = "Resilient Security LLC"
    blog = "https://resilientsecurity.cloud"
    email = "andrewkrug@gmail.com"
    location = "USA"
    name = "Andrew Krug"
    description = "Test organization for securing the speed learning materials."
    has_organization_projects = true
    has_repository_projects = true
    default_repository_permission = "read"
    members_can_create_repositories = true
    members_can_create_public_repositories = true
    members_can_create_private_repositories = true
    members_can_create_internal_repositories = true
    members_can_create_pages = true
    members_can_create_public_pages = true
    members_can_create_private_pages = true
    members_can_fork_private_repositories = true
    web_commit_signoff_required = false
    advanced_security_enabled_for_new_repositories = false
    dependabot_alerts_enabled_for_new_repositories=  false
    dependabot_security_updates_enabled_for_new_repositories = false
    dependency_graph_enabled_for_new_repositories = false
    secret_scanning_enabled_for_new_repositories = false
    secret_scanning_push_protection_enabled_for_new_repositories = false
}

resource "github_repository" "github-configuration" {
  name        = "github-configuration"
  description = "Terraform IAC configuration of the Github organization. :)"
  visibility = "public"
  vulnerability_alerts = false
  ignore_vulnerability_alerts_during_read = true
  topics = ["configuration", "terraform"]
}

resource "github_repository" "serverless-listener" {
  name        = "serverless-security-listener"
  description = "A webhook listener example for serverless. :)"
  visibility = "public"
  vulnerability_alerts = false
  ignore_vulnerability_alerts_during_read = true
  topics = ["iac", "automated"]
}