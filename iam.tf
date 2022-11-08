module "organization-iam" {
  source  = "terraform-google-modules/iam/google//modules/organizations_iam"
  version = "~> 7.4"

  organizations = ["371355930727"]

  bindings = {
    
    "roles/billing.admin" = [
      "group:gcp-billing-admins@avaloq.com",
    ]
    
    "roles/resourcemanager.organizationAdmin" = [
      "group:gcp-organization-admins@avaloq.com",
    ]
    
  }
}
