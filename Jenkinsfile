pipeline {
    agent any

    stages {
        stage('Clean Workspace') {
            steps {
                cleanWs() // Ensures a fresh start
            }
        }

        stage('Clone Repository') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/Atharva9605/StudentProject.git'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t atharvanand24/studentproject:latest .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([string(credentialsId: 'docker-hub-password', variable: 'DOCKER_PASS')]) {
                    sh '''
                        echo "$DOCKER_PASS" | docker login -u atharvanand24 --password-stdin
                        docker push atharvanand24/studentproject:latest
                    '''
                }
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed. Check logs for details.'
        }
    }
}
