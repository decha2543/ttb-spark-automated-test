pipeline {
    agent any
    environment {
        REQUIREMENT_FILE_PATH = "robot-framework/requirements.txt"
    }
    stages {
        stage('START: Checkout Code From Git') {
            steps {
                echo "Checkout Code From $GIT_URL"
                checkout scm
            }
        }
        stage('BUILD: Prepare Test Environment'){
            steps {
                echo "Update pip to latest version"
                sh "pip install --upgrade pip"

                echo "Install Python Package From requirements.txt"
                sh "pip install -r ${REQUIREMENT_FILE_PATH} --no-cache-dir"
                sh "npx playwright install && rfbrowser init"
            }
        }
        stage('EXEC: Run Test Automate') {
            parallel {
                stage('Execute Test: Web UI'){
                    echo "Start Execute Test: Web UI"
                    sh "echo hi"
                }

                stage('Execute Test: API'){
                    echo "Start Execute Test: API"
                    sh "echo hi2"
                }
            }
        }
        stage('REPORT: Send Result To Jenkins') {
            echo "Publishing results"
        }
    }
}
