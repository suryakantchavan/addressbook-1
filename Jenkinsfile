pipeline {
    agent any

    parameters{

        string(name: 'Version', defaultValue:'1.1',description:'this new config')
        booleanParam(name: 'exceuteTest', defaultValue:true,description:'decide to run')
        choice(name: 'Version', choices:['1.1','1.2','1.3'])
    }
    stages {
        stage('Compile') {
            agent any
            steps {
                script{
                    echo "Compiling the code"
                    sshagent(['user-key']) {
        sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.43.186 'mvn package'"
        }        
                  }
            }
        }
        stage('UnitTest') {
            when{
                expression{
                    params.exceuteTest == true
                }
            }
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
                    echo "deploying version ${params.Version}"
                  }
            }
        }
    }
}
