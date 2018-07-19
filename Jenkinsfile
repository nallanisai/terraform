//Jenkinsfile

pipeline {
 
  agent any
  
  parameters {
    string(name: 'tf_version', description: 'Terraform version', defaultValue: '0.11.7')
  }
  
  options {
    buildDiscarder(logRotator(numToKeepStr: '10'))
    disableConcurrentBuilds()
    ansiColor('xterm')
  }

  stages {
    stage('Loading AWS Credentials and running terraform plan') {
      steps {
          echo "colors"
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
