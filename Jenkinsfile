pipeline{
    agent any 
    tools {
        maven "my-maven"
    }

    stages {
        stage('build'){
            steps{
                sh "mvn --version"
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