

Many times we need to provision the resources after we launch these using terraform.

- **local-exec** - execute a script locally once resource is launch, ex: get the private ip of ec2 instance.
- **remote-exec** - execute a script remotely once resource is launch, ex: start httpd server once ec2 manchine is launched
- **file** - The file provisioner used to copy files or directories from the machine executing Terraform to the newly created resource

In this example: 

- lunch an ec2 instance
- get the private ip of the machine and print it to file called privateip.txt using local exec provisioner.
- connect to the ec2 using ssh, this need .pem or .cer file to connect to ec2 . (make sure the ec2 has security group which allows ssh on port 22)
- create an index.html file and copy it to the ec2 machine using file provisioner
- Once ec2 machine launched, execute script to install and start httpd service and copy the index.html file to **/var/www/html/index.html**
- create elastic ip and attach it to ec2 instance. so we will have public non changing ip.
- print public ip using output.
- Once do terraform init, terraform apply, you will get the public ip printed on console. 
- Once hit the public ip, you will have index.html will be displayed on browser.( make sure security group allows port 80 on http )