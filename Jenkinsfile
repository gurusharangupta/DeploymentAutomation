pipeline {
environment {
        
        AWS_DEFAULT_REGION = "us-east-1"
    }
agent  any
stages {
                stage('checkout') {
            steps {
                 script{

                        
                            git "https://github.com/Abishek-Ravichander/Terraform_Ansible_2.git"
			    git "https://github.com/Abishek-Ravichander/Manavae-web-app-2.git"
                        
                    }
                }
            }       
                                                                   
        }
   }