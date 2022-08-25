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