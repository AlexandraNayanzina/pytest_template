pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'python --version'
                sh 'source venv/bin/activate'
                sh 'pip install -r requirements.txt'
                sh 'mkdir AllureReports'
            }

           stage('Tests run') {
            steps {
                sh 'pytest -v -s Test_dir'
            }
        }
    }
}