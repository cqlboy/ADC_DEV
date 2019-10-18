pipeline {
    agent any
    stages {
        stage('--START PIPELINE--') {
            steps {
                echo "Begin pipeline execution"
            }
        }
        stage('---qa pre deploy---') {
            steps {
                echo "message - deploy to qa by GIT trigger"
            }
        }
        stage('--execute export dacpac, import to qa--') {
            steps {
		bat """
		cd C:\\Git\\repo\\ADC_DEV
		BuildDACPAC_QA.bat
		"""
            }
        }
        stage('--qa post deploy--') {
            steps {
                echo "message - completed deploy to qa by GIT trigger"
            }
        }
        stage('--END PIPELINE--') {
            steps {
                echo "Ending pipeline execution"
            }
        }
    }
}
