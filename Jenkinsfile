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
}