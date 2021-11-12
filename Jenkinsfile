pipeline
{
	agent any
	  stages {
  	      stage('pull'){
                  steps{
                     script{
                         checkout([$class: 'GitSCM', branches: [[name: '*/main']], 
                             userRemoteConfigs: [[ 
                                 credentialsId: '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',
                                 url :'https://github.com/DOMINATORS2020/CD-Project.git']]])
                                 }
			}
		}
	}
}
