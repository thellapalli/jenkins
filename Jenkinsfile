pipeline {
  agent any
	
  stages {
    stage('plugins') {
	  steps {
	    sh 'terraform init -upgrade'
	    sh 'terraform fmt -check'
		}
		}
	stage('validate') {
	 steps {
	  sh 'terraform validate'
	  }
          }
	stage('plan') {
	  steps {
	    sh 'terraform plan'
		input message: "approve build or discard?"
		}
		}
	stage('apply') {
	  steps {
	    sh 'terraform apply'
		}
		}
	}
}

