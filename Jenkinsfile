pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/omerdr1/jenkins-test.git', branch: 'main' // Git depo URL'ini ve branch'i değiştir
            }
        }
        stage('Build Image') {
            steps {
                script {
                    docker.build("miracdursun/flask-app:latest", ".") // Docker Hub kullanıcı adını değiştir
                }
            }
        }
        stage('Push Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials') { // Docker Hub kimlik bilgilerini yapılandır
                        docker.image("miracdursun/flask-app:latest").push() // Docker Hub kullanıcı adını değiştir
                    }
                }
            }
        }
    }
}