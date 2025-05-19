pipeline {
    agent any
    environment {
        SNYK_TOKEN = credentials('snyk-api-token')
        IMAGE_NAME = "demo:${BUILD_NUMBER}" 
    }
    stages {
        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }
        
        stage('Clone GitHub Repo') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/Orisuniyanu/3mtt_Demo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t $IMAGE_NAME ."
            }
        }

        stage('Scan with Snyk') {
            steps {
                sh """
                    snyk auth $SNYK_TOKEN
                    snyk container test $IMAGE_NAME --file=Dockerfile
                """
            }
        }
    }
}
