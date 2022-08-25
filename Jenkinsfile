pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'python3 --version'
                sh '''
                    python3 -m venv venv
                    source venv/bin/activate
                    pip install -r requirements.txt
                    mkdir AllureReports
                    pytest --alluredir AllureReports Test_dir
                '''
            }
        }
    }
}
