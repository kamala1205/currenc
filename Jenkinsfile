pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/kamala1205/currenc.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t currency-converter .'
            }
        }
        stage('Run Container') {
            steps {
                // Stop old container if it exists
                sh 'docker rm -f currency-container || true'
                // Run container on port 8081 (since 8080 is Jenkins)
                sh 'docker run -d -p 8081:80 --name currency-container currency-converter'
            }
        }
    }
}
