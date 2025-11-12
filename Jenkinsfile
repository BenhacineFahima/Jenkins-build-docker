node {
    def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        // Je build mon image Docker à partir du Dockerfile
        app = docker.build("fahima/nginx")
    }

    stage('Run image') {
        // Je lance le conteneur et j'attends que Nginx soit prêt
        docker.image('fahima/nginx').withRun('-p 8089:80') { c ->
            
            sh 'docker ps'

            // Boucle de vérification : je teste le port jusqu'à ce que Nginx réponde
            sh '''
            for i in {1..20}; do
                if curl -s localhost:8089; then
                    echo "Nginx est prêt !"
                    break
                fi
                echo "Waiting for Nginx..."
                sleep 1
            done
            '''
        }
    }
}

