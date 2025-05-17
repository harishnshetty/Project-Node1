pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://your-git-repo-url.git' // Replace with your repo
            }
        }
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    def image = docker.build("nodejs-test-app")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker rm -f nodejs-test || true'
                    sh 'docker run -d --name nodejs-test -p 3000:3000 nodejs-test-app'
                }
            }
        }
    }
}