pipeline{
    agent any 
    
   
    stages{
        stage('Initialize'){
            steps{
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
            ''' 
            }
        }
        stage('Build'){
            steps{
                sh 'sudo chmod +x /var/lib/jenkins/workspace/django-pipeline/build.sh'
                sh 'sudo /var/lib/jenkins/workspace/django-pipeline/build.sh'
            }
        }
        
    }

}
