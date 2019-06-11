pipeline {
  agent {
    dockerfile true
//   docker {
//     image 'centos'
//   }
  }
  triggers{ cron('H/30 * * * *') }
  stages {
    stage('') {
      steps {
        sh 'uptime'
        sh '''
             echo "hello world"
             touch abc
             ls -al
             pwd
             hostname -f
        '''
      }
    }
  }
}
