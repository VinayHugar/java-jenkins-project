pipeline {
    tools {
	// Define Maven in Jenkins > Dashboard > Manage Jenkins > Tools > Maven installations
        maven 'maven3.8.8'
    }

    environment {
	// Define Global properties Environment variables
        SONAR_URL = "${CALC_SONAR_URL}"
        SONAR_LOGIN = "${CALC_SONAR_LOGIN}"
        SONAR_PROJECT_KEY = "${CALC_SONAR_PROJECT_KEY}"
	TOMCAT_URL = "${CALC_TOMCAT_URL}"
	    
	// Define Global credentials ID
	TOMCAT_CRED_ID = 'dd1e60c4-4455-4c2a-8e0c-6a1f04131638'
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
                      -Dsonar.projectKey=${SONAR_PROJECT_KEY} \
                      -Dsonar.host.url=${SONAR_URL} \
                      -Dsonar.login=${SONAR_LOGIN}
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
                        credentialsId: "${TOMCAT_CRED_ID}",
                        path: '',
                        url: "${TOMCAT_URL}"
                        )
                    ],
                    contextPath: 'app',
                    war: 'target/*.war'
            }
        }
    }
}
