pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'python --version'
                sh 'python -m venv venv'
                sh 'source venv/bin/activate'
                sh 'python -m pip install'
                sh 'pip install -r requirements.txt'
                sh 'mkdir AllureReports'
            }
        }
    }
}
