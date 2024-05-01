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
        withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'AWS', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
           sh "terraform plan"
	   sh "terraform apply -auto-approve"
	}
	}	}
 //stage('destroy ') {
      steps {
        sh "terraform destroy -auto-approve"
}
}//

	}

}

