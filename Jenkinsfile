pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout from main branch
                git branch: 'main', url: 'https://github.com/kamala1205/currenc.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t currency-converter .'
            }
        }
        stage('Run Container') {
            steps {
                echo 'Running Docker container...'
                // Stop old container if exists
                sh 'docker rm -f currency-container || true'
                // Run new container on port 8081 (since Jenkins is on 8080)
                sh 'docker run -d -p 8081:80 --name currency-container currency-converter'
            }
        }
    }
}
