Step #1: Terraform Service Account: dedicated & least-privilege.
A: Install the Google Cloud CLI (gcloud)
B: gcloud auth application-default login: for admin user: anirban@anodiam.com
C: gcloud config set project voice-clone-project-474511
D: gcloud iam service-accounts create tf-admin-sa --display-name "Terraform Admin Service Account"
E: Give it required permissions to service-account at organization level (anodiam.com): Code in
   sa-iam-permissions module in current project.


Todo:
#1: Store Secrets and Keys in Secrets/ Vault, Github action.

