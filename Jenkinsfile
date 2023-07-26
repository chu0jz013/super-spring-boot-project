pipeline{
    agent any 
    tools {
        maven "my-maven"
    }

    stages {
        stage('build'){
            steps{
                sh "mvn --version"
                sh "mvn --build"
            }
        }
    }
}