pipeline {
  agent any
	
  stages {
    stage('plugins') {
      steps {
	sh "terraform init"
		}
	}
    stage('validate') {
      steps {
        sh "terraform validate"
	  }
          }
    stage('plan') {
      steps {
        sh "terraform plan"
	input message: "approve build or discard?"
		}
		}
    stage('apply') {
      steps {
        sh "terraform apply"
		}
		}
	}
}

