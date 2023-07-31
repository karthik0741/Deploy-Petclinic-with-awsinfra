pipeline {
  agent any
  stages {
    stage ('init') {
      steps {
        sh 'cd infra'
        sh 'terraform init'
      }
    }
    stage ('plan'){
      steps {
        sh 'cd infra'
        sh 'terraform plan'
      }
    }
  }
}
