pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh '''
                    python3 -m venv venv
                    source  venv/bin/activate
                    pip install -r requirements.txt
                    pytest --alluredir AllureReports Test_dir
                    open pytest_html_report.html
                '''
            }
        }
    }
    post('Allure reports') {
        always {
            script {
              allure([
                includeProperties: true,
                jdk: '',
                properties: [],
                reportBuildPolicy: 'ALWAYS',
                results: [[path: 'AllureReports']]
              ])
            }
          }
    }
}