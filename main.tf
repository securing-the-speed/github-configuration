module "organization" {
  source  = "mineiros-io/organization/github"
  version = "~> 0.9.0"

  all_members_team_name = "all_staff"

  settings = {
    billing_email                                                = "andrewkrug@gmail.com"
    company                                                      = "Resilient Security"
    blog                                                         = "https://resilientsecurity.cloud"
    email                                                        = "andrewkrug@gmail.com"
    location                                                     = "USA"
    name                                                         = "Securing the Speed Demo Org"
    description                                                  = "This organization is a reference example for the securing the speed course."
    has_organization_projects                                    = true
    has_repository_projects                                      = true
    default_repository_permission                                = "read"
    members_can_create_repositories                              = false
    members_can_create_public_repositories                       = false
    members_can_create_private_repositories                      = false
    members_can_create_internal_repositories                     = false
    members_can_create_pages                                     = false
    members_can_create_public_pages                              = false
    members_can_create_private_pages                             = false
    members_can_fork_private_repositories                        = false
    web_commit_signoff_required                                  = false
    advanced_security_enabled_for_new_repositories               = false
    dependabot_alerts_enabled_for_new_repositories               = false
    dependabot_security_updates_enabled_for_new_repositories     = false
    dependency_graph_enabled_for_new_repositories                = false
    secret_scanning_enabled_for_new_repositories                 = false
    secret_scanning_push_protection_enabled_for_new_repositories = false
  }
}