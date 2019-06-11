pipeline {
    agent none
    stages {
        stage('Example Build') {
            agent { dockerfile true }
            steps {
                echo 'Hello World'
                sh 'pwd'
            }
        }
        stage('Example Deploy') {
            when {
                triggeredBy "TimerTrigger"
            }
            steps {
                echo 'Deploying'
            }
        }
    }
}
