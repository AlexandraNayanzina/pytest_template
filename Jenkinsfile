pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh '''
                    python3 -m venv venv
                    source  venv/bin/activate
                    pip install -r requirements.txt
                    npm install -g allure-commandline --save-dev
                    pytest --alluredir AllureReports Test_dir
                    allure serve AllureReports
                    open pytest_html_report.html
                '''
            }
        }
    }
    post('Allure reports') {
        always {
            script {
              allure([
                includeProperties: false,
                jdk: '',
                properties: [],
                reportBuildPolicy: 'ALWAYS',
                results: [[path: 'AllureReports']]
              ])
            }
          }
    }
}