pipeline{
    agent any 
    tools {
        maven "my-maven"
    }

    stages {
        stage('Scan & Review with SonarQube') {
            steps {
                withSonarQubeEnv( 'my-sonar'){
                    sh 'mvn sonar:sonar '
                }
            }
        }

        stage('Build with Maven'){
            steps{
                sh "mvn --version"
                sh "mvn clean package"
            }
        }
    }
}