pipeline {
    agent any
    environment {
        DOCKERHUB_CREDS = credentials('dockerhub-credentials')
    }
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/Atharva9605/StudentProject.git', branch: 'main'
            }
        }
        stage('Test Credentials') {
            steps {
                sh 'echo "Username: $DOCKERHUB_CREDS_USR"'
                sh 'echo "Password: $DOCKERHUB_CREDS_PSW"'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t atharvanand24/studentproject:latest .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'echo $DOCKERHUB_CREDS_PSW | docker login -u $DOCKERHUB_CREDS_USR --password-stdin'
                sh 'docker push atharvanand24/studentproject:latest'
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}