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
                            sh "ansible-playbook /Ansible/build.yml -i home/mourad/Ansible/inventory/host.yml"
                                 }
			}
		}
	}
}
