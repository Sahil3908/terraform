pipeline {
  agent any
  environment {
    TF_VAR_key = credentials('terraform-key')
   }
   stages {
   stage('Checkout') {
    steps {
     git 'https://github.com/your-username/terraform-repo.git'
    }
  }
   stage('Terraform Init') {
    steps {
     sh 'terraform init'
    }
  }
  stage('Terraform Apply') {
   steps {
    sh 'terraform apply -auto-approve'
   }
  }
 }
}
