pipeline {
  agent { docker { image 'ruby' } }
  stages {
    stage('build') {
      steps {
        sh 'ruby --version'
        sh 'echo hello world'
        sh '''
          echo Multiple lines
          ls -ltrha
          pwd
        '''
      }
    }
  }
}
