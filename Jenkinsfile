pipeline{
    agent any 
    stages {
        stage('Git clone'){
            steps{
                git 'https://github.com/chu0jz013/super-spring-boot-project.git'
            }
        }
        stage('Buid with Maven'){
            steps {
                sh 'mvn --version'
                sh 'mvn clean package'
                stash includes: 'target/*.jar', name: 'app'
            }
        }
    }
}