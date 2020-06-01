node{
  def app
    stage('clone') {
      checkout scm
    }
    stage('building image') {
      app = docker.build("hichem/nginx")
    }
    stage('test work image') {
      docker.image('hichem/nginx').withRun('-p 80:80') { c ->
      sh 'docker rm -f $(docker ps -q)'
      sh 'docker ps'
      sh 'curl localhost'
      }
    }
}
