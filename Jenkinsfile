pipeline{
    agent any 
   
   environment {
        // Replace with your Docker registry and image details
        REGISTRY = 'https://hub.docker.com'
        REPOSITORY = 'portfolio'
        IMAGE_NAME = 'django-app'
        DOCKER_CREDENTIALS_ID = 'docker-credential'  // ID of the Docker credentials in Jenkins
    }
    
    stages{
        stage('Initialize'){
            steps{
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
            ''' 
            }
        }
        stage('Checkout') {
            steps {
                // Checkout the source code from your repository
                git url: 'https://github.com/aatikah/myportfolio.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${REPOSITORY}/${IMAGE_NAME}:latest")
                }
            }
        }
        
    }

}
