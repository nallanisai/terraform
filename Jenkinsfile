//Jenkinsfile

pipeline {
 
  agent any
  
  parameters {
    string(name: 'tf_version', description: 'Terraform version', defaultValue: '0.11.7')
  }
  
  options {
    buildDiscarder(logRotator(numToKeepStr: '10'))
    disableConcurrentBuilds()
  }

  stages {
    stage('Loading AWS Credentials and running terraform plan') {
      steps {
        ansiColor('xterm') {
          echo "loading aws credentials"
          sh """
          set -x
          source /jenkins_workspace/aws_credentials.sh
          /usr/bin/terraform init 
          /usr/bin/terraform plan -out=create.tfplan
          """
        }
      }
    }
  }
}    
