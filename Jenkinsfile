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
        retry(3) {
          sh 'bash hello.sh'
        }
      }
    }
  }
    post {
    always {
      echo 'This line should be run always'
    }
    success {
      echo 'The build has succeeded!'
    }
    fail {
      echo 'The build has failed...'
    }
    changed {
      echo 'The pipeline status has changed'
    }
  }
}
