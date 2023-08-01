pipeline {
    agent any
    stages {
        stage ('init') {
            when {
                branch 'new-branch'
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
        stage ('plan'){
            when {
                branch 'main'
                steps {
                    withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID', 
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
                    credentialsId: 'AWS_ACCOUNT'
                    ]]) {
                    dir('infra'){
                    sh 'terraform plan'
                    }
                    }
                }
            }
        }
        }
    }
}
