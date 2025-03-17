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
                    docker.build("parth2k3/flask-app:latest", ".") // Docker Hub kullanıcı adını değiştir
                }
            }
        }
        stage('Push Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'd87142d5-ea82-47f0-8ef3-eaafb951c6e2') { // Docker Hub kimlik bilgilerini yapılandır
                        docker.image("parth2k3/flask-app:latest").push() // Docker Hub kullanıcı adını değiştir
                    }
                }
            }
        }
    }
}