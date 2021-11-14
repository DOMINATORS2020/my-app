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
                                 url :'https://github.com/DOMINATORS2021/CD-Project.git']]])
                                 }
			}
                   }
	      stage('build'){
                  steps{
                     script{
                            sh "ansible-playbook /home/mourad/my-app/Ansible/build.yml -i /home/mourad/my-app/Ansible/inventory/host.yml --user=mourad --extra-vars "ansible_sudo_pass=mourad""
                                 }
			}
		}
	}
}
