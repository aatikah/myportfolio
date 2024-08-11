pipeline{
    agent any 
   
   environment {
        // Replace with your Docker registry and image details
        REGISTRY = 'https://docker.io'
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
        

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${REPOSITORY}/${IMAGE_NAME}:latest")
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry("https://${REGISTRY}", "${DOCKER_CREDENTIALS_ID}") {
                        dockerImage.push('latest')
                    }
                }
            }
        }
        
    }

}
