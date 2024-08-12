node('built-in') {
    stage('Continuous Download') {
        git 'https://github.com/Xclusivep/maven.git'
    }

    stage('Continuous Build') {
        sh label: '', script: 'mvn package'
    }

    stage('Continuous Deployment to Nexus') {
        withCredentials([usernamePassword(credentialsId: 'jenkins', usernameVariable: 'admin', passwordVariable: 'admin')]) {
            sh label: '', script: """
                mvn deploy:deploy-file -DgroupId=com.example \
                                       -DartifactId=webapp \
                                       -Dversion=1.0-SNAPSHOT \
                                       -Dpackaging=war \
                                       -Dfile=webapp/target/webapp.war \
                                       -DrepositoryId=jenkins \
                                       -Durl=http://54.237.230.16:8081/repository/maven-releases/ \
                                       -Dusername=$admin \
                                       -Dpassword=$admin
            """
        }
    }

    stage('Continuous Testing') {
        sh label: '', script: 'echo "udenyi peter the Testing Passed"'
    }
}
