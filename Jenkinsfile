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
