pipeline{
    agent any
    stages{
        stage("git repo"){
            steps{
            git: https://github.com/Nadeem62/devops-exam.git
                }
        }
        stage("TF Init"){
            steps{
                echo "Executing Terraform Init"
                sh'terraform init'
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
            }
        }
    }
}
