pipeline {

  agent any

  environment {
    PASS = credentials('docker-pass')
  }

  stages {
    stage('Build') {
      steps {
        sh '''
           ./jenkins/build/mvn.sh -B -DskipTests clean package
           ./jenkins/build/build.sh
           '''
      }
      post {
        success {
          archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
        }
      }
    }
    stage('Test') {
      steps {
        sh './jenkins/test/mvn.sh test'
      }
      post {
        always {
          junit 'java-app/target/surefire-reports/*.xml'
        }
      }
    }
    stage('Push') {
      steps {
        sh './jenkins/push/push.sh'
      }
    }
    stage('Deploy') {
      steps {
        sh './jenkins/deploy/deploy.sh'
      }
    }
  }
}