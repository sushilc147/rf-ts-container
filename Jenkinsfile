pipeline {
  agent any
  
  stages {
    
    stage ('dockerization building') {
      steps {
        sh '''
        docker build -t my-golang-app .        
        '''
      }
    }
	
	stage ('deploy') {
      steps {
        sh '''
        docker run -i --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp --name my-running-app my-golang-app
        '''
      }
    }
  }
}

