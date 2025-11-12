node {
    def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("fahima/nginx")
    }

    stage('Run image') {
        docker.image('fahima/nginx').withRun('-p 8089:80') { c ->
            
            sh 'docker ps'
            sh 'sleep 5'            // j'attends 5 secondes pour que Nginx démarre
            sh 'curl localhost:8089'
        }
    }
}

