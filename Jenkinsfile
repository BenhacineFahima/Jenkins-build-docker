node{
def app
  
  stage('Clone') {
      checkout scm
   }
   
   stage('Build image') {
       app = docker.build("fahima/nginx")
   {

   stage('Run image') {
       docker.image('fahima/nginx').withRun('-p 8089:80') { c ->

       sh 'docker ps'
   
       sh 'curl localhost'
    }
    }
}
