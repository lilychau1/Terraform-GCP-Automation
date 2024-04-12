# Terraform Infrastructure as Code for Google Cloud Platform

This repository contains Terraform code to provision resources on Google Cloud Platform (GCP). It sets up a Google Compute Engine (GCE) instance and a Google Cloud Storage (GCS) bucket, along with a Google BigQuery dataset.

## Prerequisites

Before you begin, ensure you have:

- Terraform installed (version 1.0 or later)
- Google Cloud SDK installed and authenticated
- Google Cloud project with necessary permissions

## Usage

### 1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
   ```
### 2. Initialize Terraform:
  ```bash
  terraform init
  ```
### 3. Modify the .env file:
Update the `.env` file with your project-specific configurations. Feel free to add more configurations and alter correspoingly in `main.tf` and `variables.tf`. 

In the illustrated example, the `.env` file is as follows: 
```
PROJECT_ID=<your_project_id>
```

### 5. Review and modify variables:
Review the `variables.tf` file and modify the default values if necessary.

### 6. Deploy infrastructure:
   ```bash
   terraform apply
   ```

## Project Structure

- `main.tf`: Defines the infrastructure resources using Terraform configuration.
- `variables.tf`: Contains input variables used in the Terraform configuration.
- `start_up_script.sh`: Bash script executed as a startup script for the GCE instance. It creates a folder named test_repo, installs Git and Docker Compose, and then clones a GitHub repository into the test_repo folder.

## Terraform Configuration

- `provider "google"`: Specifies the Google Cloud provider and authentication details.
- `google_compute_instance`: Defines a GCE instance with specified configurations.
- `google_storage_bucket`: Creates a GCS bucket with lifecycle rules.
- `google_bigquery_dataset`: Sets up a BigQuery dataset.

## Customization

- Modify `main.tf` and `variables.tf` to customize resource configurations.
- Update `.env` file with your project-specific environment variables.

## Note

Ensure proper permissions and configurations are set up in your Google Cloud project for successful resource provisioning.

## Author
Lily Chau (https://www.linkedin.com/in/chauyeeki/)

Thank you for your time. Feel free to reach out for any questions or feedback!

   
