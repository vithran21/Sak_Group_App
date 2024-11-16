pipeline {
    agent any
    
    tools {
        maven 'maven'
    }

    environment {
        GIT_REPO = 'https://github.com/vithran21/Sak_Group_App.git' // Replace with your GitHub URL
        APP_NAME = 'spring_app_sak-0.0.1-SNAPSHOT.jar' // Replace with your JAR file name
        PORT = 8081
    }

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning repository...'
                git branch: 'main', url: "${env.GIT_REPO}"
            }
        }

        stage('Build with Maven') {
            steps {
                echo 'Building the project with Maven...'
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Deploy') {
            steps {
                script {
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
    }

    post {
        success {
            echo 'Application deployed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check logs for errors.'
        }
    }
}
