pipeline{
    agent any
    stages{
        stage("Git Checkout"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '2c598aa7-caf7-4cf7-959e-4a57a97b4bcb', url: 'https://github.com/Nadeem62/devops-exam.git']])
            }
        }
        stage("TF Init"){
            steps{
                echo "Executing Terraform Init"
                sh 'terraform init'
            }
        }
        stage("TF Validate"){
            steps{
                echo "Validating Terraform Code"
                sh 'taerrform validate'
            }
        }
        stage("TF Plan"){
            steps{
                echo "Executing Terraform Plan"
                sh 'terraform plan'
            }
        }
        stage("TF Apply"){
            steps{
                echo "Executing Terraform Apply"
                sh 'terraform apply'
            }
        }
        stage("Invoke Lambda"){
            steps{
                echo "Invoking your AWS Lambda"
                sh 'aws lambda invoke --function-name exam-lambda --payload '{"name": "Nadeem.Shaikh"}' output.json'
            }
        }
    }
}
