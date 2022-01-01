pipeline {
    agent none
    tools{
        jdk 'myJava'
        maven 'myMaven'
    }
    stages {
        stage('Compile') {
            agent any
            steps {
                script{
                    echo "Compiling the code"
            
                  }
            }
        }
        stage('UnitTest') {
    
            steps {
                script{
                    echo "Running the test cases"
                
                }
            }
            
        }
        stage('Package') {
            agent any
           steps {
                script{                   
                   echo "pacakage the test cases"
  
                  }
            }
        }
        stage('Deploy') {
            agent any
           steps {
                script{
                    echo "Deploying the app"
                  }
            }
        }
    }
}
