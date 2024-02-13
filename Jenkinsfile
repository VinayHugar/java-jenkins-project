pipeline {
    tools {
        maven 'maven3.8.8'
    }
    
    agent {
        label 'slaveone'
    }
    
    stages {
        stage('Checkout Code'){
			steps {
				checkout scm
			}
		}
        stage('Build') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Code Quality') {
            steps {
                sh '''
                mvn clean verify sonar:sonar \
                  -Dsonar.projectKey=vtucalhgr \
                  -Dsonar.host.url=http://100.24.53.226:9000 \
                  -Dsonar.login=sqp_15e154c3f8d144a9a67380f33a906514ad52b539
                '''
            }
        }
        stage('Artifact') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                 deploy adapters:[
                    tomcat9(
                        credentialsId: 'dd1e60c4-4455-4c2a-8e0c-6a1f04131638',
                        path: '',
                        url: 'http://52.70.66.105:8080/'
                        )
                    ],
                    contextPath: 'app',
                    war: 'target/*.war'
            }
        }
    }
}
