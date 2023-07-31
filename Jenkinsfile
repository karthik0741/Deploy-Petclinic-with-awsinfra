pipeline {
  agent any
  stages {
    stage (“terraform init”) {
      steps {
        sh (‘terraform init’)
      }
      steps {
        sh (‘terraform plan’)
      }
    }
  }
}
