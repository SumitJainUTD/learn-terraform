This example covers workspace example

```terraform workspace -h          
Usage: terraform [global options] workspace

  new, list, show, select and delete Terraform workspaces.

Subcommands:
    delete    Delete a workspace
    list      List Workspaces
    new       Create a new workspace
    select    Select a workspace
    show      Show the name of the current workspace
```

1. By default there is workspace created when we do terraform init - default
2. create 2 workspaces, prod and dev.
3. execute command from terminal -  _terraform workspace list_   
    ```  
      default
      dev
    * prod
    ```
4. define 3 values for variables under var.tf file, one for each default, prod, dev. 
   (see var.tf file)
5. In ec2.tf file use lookup to get the workspace and fetch variables according to workspace.
    ```buildoutcfg
        instance_type = lookup(var.instance_type, terraform.workspace)
    ```


