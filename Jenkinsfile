pipeline
{
	agent any
	  stages {
  	     
                   
	      stage('build'){
                  steps{
                     script{
                            sh "ansible-playbook /home/mourad/my-app/Ansible/build.yml -i /home/mourad/my-app/Ansible/inventory/host.yml --extra-vars 'ansible_become_pass=mourad'"
                                 }
			}
		}
	}
}
