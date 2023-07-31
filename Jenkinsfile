pipeline {
    agent any
	tool name: 'terraform', type: 'terraform'

    stages 
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
	stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
}
