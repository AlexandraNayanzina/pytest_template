pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'python --version'
                sh 'python3 -m venv venv'
                sh 'python -m pip install --upgrade pip'
                sh 'pip install -r requirements.txt'
                sh 'mkdir AllureReports'
            }
        }
    }
}
