pipeline {
    agent any
    tools{
        maven 'maven'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('deploy') {
            steps {
                sh '''
                    echo "Stopping spring application processer"
                    sudo pkill -f target/spring_app_sak-0.0.1-SNAPSHOT.jar
                    # Start the Spring application
                    echo "Starting the Spring application..."
                    sudo java -jar target/spring_app_sak-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &
                '''
            }
        }
    }
  post {
    success {
      echo "Deployed successfully"
    }
    failure {
      echo "Failed to Deploy"
    }
  }
}