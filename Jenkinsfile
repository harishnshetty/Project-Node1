pipeline {
    agent any
    
tools {
  nodejs 'Node24'
}

    stages {
        stage('Git Cloning') {
            steps {
                git branch: 'main', url: 'https://github.com/harishnshetty/Project-Node1.git'
            }
        }
        
        stage('NPM Installing') {
            steps {
                sh '''npm install
npm run build'''
            }
        }
        
         stage('Building Docker Image') {
            steps {
                sh './Docker-build.sh'
               }
        }
        
    }
}
