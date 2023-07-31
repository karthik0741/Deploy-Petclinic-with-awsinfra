pipeline {
  agent any
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
