pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                script {
                 dir('subDir') {
                 checkout scm
                    }
                }
            }
        }
        stage('Make Script Executable') {
            steps {
                // Ensure the hello.sh script is executable in the subdirectory
                sh 'chmod +x ./files/hello.sh'
            }
        }
        stage('Build Website') {
            steps {
                // Run the script from the subdirectory
                sh './files/hello.sh'
            }
        }
        stage('HTML Validation') {
            steps {
                echo 'Running HTML Validation..'
                // Validate the index.html file from the subdirectory
                sh 'tidy -q -e ./files/index.html || echo "HTML issues detected!"'
            }
        }
    }
}
