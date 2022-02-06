In this example - 

- Import is used for getting information from aws which is not present with tf.
- for example - you have 5 ec2 machines launched using terraform.
- you have launched one ec2 machine manually in aws.
- now you want to make one change to all 6 ec2 machines but your terraform does not have information about manually launched ec2.
- create a template in ec2.tf
  ```
  resource  "aws_instance" "manually_created_instance" {
    ami = ""
    instance_type = ""}
  ```
-  execute the command from terminal
- copy the instance id from aws, in our case - i-0d2f5a11ca2d3d8cd
 ```
 terraform import aws_instance.manually_created_instance i-0d2f5a11ca2d3d8cd
 ```
- copy the ami and instance type from terraform.tfstate and fill
