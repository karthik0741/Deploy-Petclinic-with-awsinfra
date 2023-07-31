pipeline {
  agent any
  stages {
    stage ('init') {
      steps {
        withCredentials([[
		$class: 'AmazonWebServicesCredentialsBinding', 
   	 	accessKeyVariable: 'AWS_ACCESS_KEY_ID', 
        	secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
		credentialsId: 'AWS_ACCOUNT'
		]]) {
        dir('infra'){
          sh 'terraform init'
        }
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
