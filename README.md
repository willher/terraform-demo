# terraform-demo
Re-pull repo to get most up-to-date notes

main.tf = where your code lives for provisioning infastructure
variables.tf = where you declare variables
terraform.tfvars = where you set values for your declared variables

##Comamands
1) terraform init
   1) Downloads the provider.
   2) creates .terraform.lock.hcl
      1) This locks the version.
   3) Creates a hidden .terraform directory.

2) terraform fmt
   1) Ensures goo, consistent formatting.

3) terraform validate
   1) Verifies syntax is correct and the code is internally consistent.

4) terraform plan
   1) Shows you what will happen when you run and apply your changes.

5) terraform apply
   1) Runs a terraform plan.
   2) Confirms you want to continue with a yes.
   3) Applies the changes .

6) terraform show
   1) shows current state (state is an important concept to understand *LINK TO STATE INFO*).

7) terraform state list
    1) Lists the state files.

8) terraform state show <VALUE>
   1) Shows state for a specific <VALUE>.