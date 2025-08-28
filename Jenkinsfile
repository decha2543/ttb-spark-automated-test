pipeline {
    agent {
        dockerContainer { image 'my-robot-agent:latest' }
    }
    environment {
        REQUIREMENT_FILE_PATH = 'robot-framework/requirements.txt'
    }
    stages {
        stage('START: Checkout Code From Git') {
            steps {
                echo "Checkout Code"
                checkout scm
            }
        }
        stage('EXEC: Run Test Automate') {
            steps {
                script {
                    parallel(
                        'Execute Test: Web UI' {
                            echo 'Start Execute Test: Web UI'
                            sh 'echo hi'
                        },
                        'Execute Test: API' {
                            echo 'Start Execute Test: API'
                            sh 'echo hi2'
                        }
                    )
                }
            }
        }
        stage('REPORT: Send Result To Jenkins') {
            steps {
                echo 'Publishing results'
            }
        }
    }
}
