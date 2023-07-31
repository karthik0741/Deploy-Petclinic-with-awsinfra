pipeline {

agent any
tool name: 'terraform', type: 'terraform'

stages {
  stage ('terraform init') {
	steps {

	sh 'terraform init’

	}

	}
  	steps {

	sh ‘terraform plan’

}
}
}
