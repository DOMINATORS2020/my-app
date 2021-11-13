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
                            sh "ansible-playbook home/mourad/my-app/Ansible/build.yml -i home/mourad/my-app/Ansible/inventory/host.yml"
                                 }
			}
		}
	}
}
