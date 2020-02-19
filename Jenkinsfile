pipeline {
    agent any 
    stages {
        stage('documentación') {
            steps {
                    echo "A documentar!"
		   sh 'make doc'
		}
		}
	    post {
		allways {
		publishHTML([allowMissing: true, alwaysLinkToLastBuild: true, keepAll: true, reportDir: 'html', reportFiles: 'index.html', reportName: 'HTML Report', reportTitles: ''])

		}
	}
}
}
