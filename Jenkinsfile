pipeline{
    agent any 
    stages {
        stage('git'){
            steps{
                git 'https://github.com/chu0jz013/super-spring-boot-project.git'
            }
        }
        stage('buid with maven'){
            steps {
                sh 'mvn --version'
                sh 'mvn clean package'
                stash includes: 'target/*.jar', name: 'app'
            }
        }
    }
}