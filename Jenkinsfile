pipeline{
    agent any 
   
   environment {
        PROJECT_ID = 'devsecops-432016' // Replace with your GCP Project ID
        GCP_SERVICE_ACCOUNT = credentials('gcp-service-account') // Use the ID from Jenkins credentials
        IMAGE_NAME = 'django-app' // Replace with your Docker image name
        IMAGE_TAG = 'latest'
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

      stage('Authenticate with GCP') {
            steps {
                withCredentials([file(credentialsId: 'gcp-service-account', variable: 'GOOGLE_APPLICATION_CREDENTIALS')]) {
                    sh 'gcloud auth activate-service-account --key-file=$GOOGLE_APPLICATION_CREDENTIALS'
                    sh 'gcloud auth configure-docker'
                }
        }
        

        
    }

}
}
