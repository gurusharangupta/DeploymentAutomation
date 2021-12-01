resource "aws_instance" "web1" {
   ami           = "ami-0c2b8ca1dad447f8a"
   instance_type = "t2.micro"
   count = 1
  vpc_security_group_ids = ["sg-00dd59e1f3d294cd2"]
   key_name               = "gurusharan-terraform"
   user_data = <<-EOF
      #!/bin/bash     
      sudo amazon-linux-extras install ansible2 -y
      sudo yum install git -y
      sudo yum install maven -y      
      git -C ./home/ec2-user clone https://github.com/gurusharangupta/DeploymentAutomation.git          
      cd /home/ec2-user/DeploymentAutomation && ansible-playbook main.yml -f 10
      cd /home/ec2-user/DeploymentAutomation && wget -O Java-Ansible.war https://gurusharan.jfrog.io/artifactory/java-web-app/Java-Ansible/0.0.1-SNAPSHOT/Java-Ansible-0.0.1-SNAPSHOT.war
      cd /home/ec2-user/DeploymentAutomation && ansible-playbook deploy.yml -f 10
      EOF
   }
