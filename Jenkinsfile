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
	      stage('build'){
                  steps{
                     script{
                            sh "ansible-playbook /ansible/build.yml -i /ansible/inventory/host.yml"
                                 }
			}
		}
	}
}
