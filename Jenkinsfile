pipeline {
  agent any
  parameters {
  credentials credentialType: 'com.cloudbees.jenkins.plugins.awscredentials.AWSCredentialsImpl', defaultValue: 'My AWS', name: 'AWS_ACCESS_KEY_ID', required: true
}
  stages {
    stage ('init') {
      steps {
        dir('infra'){
          sh 'terraform init'
        }
      }
    }
    stage ('plan'){
      steps {
        dir('infra'){
          sh 'terraform plan'
        }
      }
    }
  }
}
