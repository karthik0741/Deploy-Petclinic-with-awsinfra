pipeline {
    agent any
    stages {
        stage ('Initialize Terraform and validate.') {
            when { anyOf {branch "new-branch";changeRequest() } }
            steps {
                withCredentials([[
                $class: 'AmazonWebServicesCredentialsBinding', 
                accessKeyVariable: 'AWS_ACCESS_KEY_ID', 
                secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
                credentialsId: 'AWS_ACCOUNT'
                ]]) {
                dir('infra'){
                sh 'terraform init'
                sh 'terraform fmt'
                sh 'terraform validate'
                }
                }
            }
            }
        stage ('Terraform plan'){
            when {
                branch 'new-branch'
            }
            steps {
                withCredentials([[
                $class: 'AmazonWebServicesCredentialsBinding', 
                accessKeyVariable: 'AWS_ACCESS_KEY_ID', 
                secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
                credentialsId: 'AWS_ACCOUNT'
                ]]) {
                dir('infra'){
                sh 'terraform init'
                sh 'terraform plan'
                }
                }
            }
        }        
        stage ('Terraform plan & Action'){
            when {
                branch 'main'
            }
            steps {
                withCredentials([[
                $class: 'AmazonWebServicesCredentialsBinding', 
                accessKeyVariable: 'AWS_ACCESS_KEY_ID', 
                secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
                credentialsId: 'AWS_ACCOUNT'
                ]]) {
                dir('infra'){
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply --auto-approve'
                }
                }
            }
        }
    }
}
