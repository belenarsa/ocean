pipeline {
    agent any 
    stages {
        stage('documentación') {
            steps {
                    echo "A documentar!"
		   sh 'make doc'
		}
	    post {
		always {
		publishHTML([allowMissing: true, alwaysLinkToLastBuild: true, keepAll: true, reportDir: 'html', reportFiles: 'index.html', reportName: 'HTML Report', reportTitles: ''])

		}
	}
	}
	stage('CppCheck'){
		steps {
		sh 'make cppcheck-xml'
		}
	}
	stage('Tests') {
            steps {
                sh 'make tests-xml'
            }
	}
}	
	post {
		always {
			publishCppcheck pattern: 'cppcheck.xml'
			junit '*.xml'
	}
	}	


}
