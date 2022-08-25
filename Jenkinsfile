pipeline {
    agent any
    stages {
        stage('Env initialization') {
            steps {
                echo 'python --version'
            }
        }
        stage('Tests run') {
            steps {
                echo 'Tests run stage'
            }
        }
    }
    post('Reports stage') {
        steps {
                echo 'Post stage'
            }
    }
}