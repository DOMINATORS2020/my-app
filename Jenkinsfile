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
                            sh "ansible-playbook /home/mourad/my-app/Ansible/build.yml -i /home/mourad/my-app/Ansible/inventory/host.yml"
                                 }
			}
		}
	}
}
