pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/mani-mani9/Docker-Jenkins.git'
            }
        }

        stage('Docker Build') {
            steps {
                sh ' docker build -t login .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                     docker rm -f LoginPage || true
                     docker run -d --name LoginPage -p 8083:80 login
                '''
            }
        }

    }
}
