pipeline{
    agent any 
    tools {
        maven "my-maven"
    }

    stages {
        stage('build'){
            steps{
                sh "mvn --version"
                sh "mvn clean package"
            }
        }
        post {
            success {
                echo   "SUCCESSFULL !!"
            }
            failure {
                echo  "FAILED !!"
            }
        }
    }
}