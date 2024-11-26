pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/Ahmar1232/jenkins-website-ci2.git', branch: 'main'
            }
        }
        stage('Make Script Executable') {
            steps {
                // Ensure the hello.sh script is executable
                sh 'chmod +x ./hello.sh'
            }
        }
        stage('Build Website') {
            steps {
                // Run the script after making it executable
                sh './hello.sh'
            }
        }
        stage('HTML Validation') {
            steps {
                echo 'Running HTML Validation...'
                sh 'tidy -q -e index.html || echo "HTML issues detected!"'
            }
        }
    }
}