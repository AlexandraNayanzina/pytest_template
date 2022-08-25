pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'python3 --version'
                sh 'python3 -m venv venv'
                sh 'source venv/bin/activate'
                sh 'pip install -r requirements.txt'
                sh 'mkdir AllureReports'
                sh 'pytest --alluredir AllureReports Test_dir'
            }
        }
    }
}
