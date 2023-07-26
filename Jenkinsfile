pipeline{
    agent any 
    tools {
        maven "my-maven"
    }

    stages {
        stage('Scan & Review with SonarQube') {
            steps {
                withSonarQubeEnv(installationName: 'my-sonar'){
                    sh 'mvn clean package -Dmaven.test.failure.ignore=true sonar:sonar '
                }
            }
        }

        stage('Build with Maven'){
            steps{
                sh "mvn --version"
                sh "mvn clean package -Dmaven.test.failure.ignore=true"
            }
        }
    }
}