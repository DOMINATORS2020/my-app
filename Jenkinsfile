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
                            sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml"
                                 }
			}
		}
	}
}
