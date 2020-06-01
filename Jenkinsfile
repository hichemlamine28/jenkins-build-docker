node{
  def app
    stage('clone') {
      checkout scm
    }
    stage('build image') {
      app = docker.build("hichem/nginx")
    }
    stage('test image') {
      docker.image('hichem/nginx').withRun('-p 80:80') { c ->
      sh 'docker ps'
      sh 'curl localhost'
      }
    }
}
