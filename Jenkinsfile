pipeline {
    agent any
    environment {
        REPOSITORY_URL = 'https://github.com/decha2543/ttb-spark-automated-test.git'
        REQUIREMENT_FILE_PATH = 'robot-framework/requirements.txt'
        BASE_TEST_PATH = 'robot-framework/tests'
        WEB_TEST_PATH = "${BASE_TEST_PATH}/web-testing"
        WEB_RESULTS_PATH = "${WEB_TEST_PATH}/results"
        API_TEST_PATH = "${BASE_TEST_PATH}/api-testing"
        API_RESULTS_PATH = "${API_TEST_PATH}/results"
    }
    stages {
        stage('START: Checkout Code From Git') {
            steps {
                echo 'Checkout Code'
                git url: "${REPOSITORY_URL}", branch: 'main', credentialsId: 'main-ssh'
            }
        }
        stage('BUILD: Prepare Python Environment') {
            steps {
                echo 'Update pip and install packages'
                bat 'python -m pip install --upgrade pip'
                bat "pip install -r ${REQUIREMENT_FILE_PATH} --no-cache-dir"
            }
        }
        stage('BUILD: Prepare Node Environment') {
            steps {
                echo 'Node install Playwright'
                bat 'npm install -g playwright'
                bat 'npx --quiet playwright install'
                bat 'rfbrowser init chromium'
            }
        }
        stage('EXEC: Run Test Automate') {
            steps {
                script {
                    parallel(
                        Web_UI: {
                            echo 'Start Execute Test: Web UI'
                            bat "robot -d ${WEB_RESULTS_PATH} --output output-web.xml --report report-web.html --log log-web.html ${WEB_TEST_PATH}"
                        },
                        API: {
                            echo 'Start Execute Test: API'
                            bat "robot -d ${API_RESULTS_PATH} --output output-api.xml --report report-api.html --log log-api.html ${API_TEST_PATH}"
                        }
                    )
                }
            }
        }
        stage('REPORT: Send Result To Jenkins') {
            steps {
                echo 'Publishing All Results Merge'
                bat "rebot --output merged/output.xml --report merged/report.html --log merged/log.html ${WEB_RESULTS_PATH}/output-web.xml ${API_RESULTS_PATH}/output-api.xml"
                robot(
                        outputPath          : 'merged',
                        outputFileName      : 'output.xml',
                        reportFileName      : 'report.html',
                        logFileName         : 'log.html',
                        disableArchiveOutput: false,
                        passThreshold       : 95.0,
                        unstableThreshold   : 95.0,
                        otherFiles          : '**/*.png',
                    )
            }
        }
    }
}
