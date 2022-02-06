In this example - 

- Create a module directory with ec2.tf, providers.tf and var.tf file
    - ec2.tf will have a template for launching ec2 instances
    - var.tf will have variables which will be used in ec2.tf and its default values
    - providers will have creds to connect to aws.
- prod directory
    - it will have tf file to launch ec2 instances for prod
    - declare the module source here (created earlier).
    - provider all the variables for the ec2.tf templates and which ever is not provided, the default value will be used from var.tf
- staging
  - same as prod.
