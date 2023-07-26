pipeline{
    agent any 

    tools {
        maven "my-maven"
        // dockerTool "my-docker"
    }

    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerhub-cred')
    }

    stages {


        // stage('Git clone repo'){
        //     steps{
        //         git ''
        //     }
        // }

        stage('Scan & Review with SonarQube') {
            steps {
                withSonarQubeEnv(installationName: 'my-sonar-server'){
                    sh 'mvn sonar:sonar '
                }
            }
        }

        stage('Build with Maven'){
            steps{
                sh "mvn --version"
                sh "mvn clean package"
                stash includes : 'target/*.jar', name: 'app'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        
        stage('Package with Docker'){
            steps {
                unstash 'app'
                sh 'ls -la'
                sh 'ls -la target'
                script{
                    sh 'docker build -t haikn013/springboot-image:1.1 .'
                }
            }
        }

        // stage('Push image to DockerHub'){
        //     steps{
        //         sh 'echo $HOVATEN'
        //         echo 'Start pushing.. with credential'
        //         sh 'echo $DOCKERHUB_CREDENTIALS'
        //         sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
        //         sh 'docker push haikn013/springboot-image:1.1 '
        //     }
        // }

        // stage('Deploy to QA Server'){
        //     steps{
        //         echo 'Deploying and cleaning'
        //         sh 'docker image rm haikn013/springboot-image:1.1 || echo "this image does not exist"'
        //         sh 'docker container stop '
        //     }
        //  }
    }
}