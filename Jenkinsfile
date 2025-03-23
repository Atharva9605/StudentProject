pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                                git branch: 'main', url: 'https://github.com/Atharva9605/StudentProject.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t atharvanand24/studentproject:latest .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh '''
                    echo "Atharvanand@1" | docker login -u atharvanand24 --password-stdin
                    docker push atharvanand24/studentproject:latest
                '''
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