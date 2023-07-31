pipeline {
  agent any
  stages {
    stage ('init') {
      steps {
        sh (‘terraform init’)
      }
      steps {
        sh (‘terraform plan’)
      }
    }
  }
}
