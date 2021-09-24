pipeline {
environment {
        
        AWS_DEFAULT_REGION = "us-east-1"
    }
agent  any
stages {
                stage('checkout') {
            steps {
                 script{

                        
                            git "https://github.com/Abishek-Ravichander/Terra-Ansi-jFrog.git"			    
                        
                    }
                }
            }      
        
         stage('mkdir') {
            steps {
                    sh '''#!/bin/bash
                 rm -rf /abi
                 mksir abi
         '''                 
                }
            }      
                                                                   
        }
   }
