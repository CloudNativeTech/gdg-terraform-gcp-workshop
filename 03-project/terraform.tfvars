project_name = "workshop-demo" # Update: Desired project name.
labels = {
  "environment" = "test"
  "team"        = "devops"
}
gcp_service_list = [
  "bigquery-json.googleapis.com",     # BigQuery API
  "bigquerystorage.googleapis.com",   # BigQuery Storage API
  "cloudapis.googleapis.com",         # Google Cloud APIs
  "clouddebugger.googleapis.com",     # Stackdriver Debugger API
  "cloudtrace.googleapis.com",        # Stackdriver Trace API
  "compute.googleapis.com",           # Compute Engine API
  "iam.googleapis.com",               # Identity and Access Management (IAM) API
  "iamcredentials.googleapis.com",    # IAM Service Account Credentials API
  "logging.googleapis.com",           # Stackdriver Logging API
  "monitoring.googleapis.com",        # Stackdriver Monitoring API
  "oslogin.googleapis.com",           # Cloud OS Login API
  "servicemanagement.googleapis.com", # Service Management API
  "serviceusage.googleapis.com",      # Service Usage API
  "sourcerepo.googleapis.com",        # Cloud Source Repositories API
  "sql-component.googleapis.com",     # Cloud SQL
  "storage-api.googleapis.com",       # Google Cloud Storage JSON API
  "storage-component.googleapis.com", # Cloud Storage
]
