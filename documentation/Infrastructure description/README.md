### The Application itself:
> 1 write added all the commands needed for installing, testing and building the application in the package.json files in the frontend and the backend 
> 2- I added the jobs inside circleci config.yml file for installing all the dependencies on both the frontend and backend of the application using the : `npm install` command inside package.json files.
> 3- Then I added the jobs for building the frontend and the backend by calling the corresponding scripts.
`version: 2.1
orbs:
  node: circleci/node@5.0.2
  aws-cli: circleci/aws-cli@2.1.0
  eb: circleci/aws-elastic-beanstalk@2.0.1
jobs:
    build:
      docker:
        - image: "cimg/base:stable"
      steps:
        - node/install
        - checkout
        - aws-cli/setup
        - eb/setup
        - run:
            name: Front-End Install
            command: |
              npm run frontend:install
        - run:
            name: Back-End Install
            command: |
              npm run backend:install
        - run:
            name: Front-End Build
            command: |
              npm run frontend:build
        - run:
            name: Back-End Build
            command: |
              npm run backend:build
        - run:
            name: Back-End Deploy
            command: |
              npm run backend:deploy
        - run:
            name: Front-End Deploy
            command: |
              npm run frontend:deploy
          
            
              
   
workflows:
    build_and_test:
      jobs:
        - build :
            filters:
              branches:
                only:
                  - main
`
        
    


### AWS Deployment:
> 4- RDS Postgres database instance that has the database structure with all the data content and is linked to backend code via port 5432 (inside Elastic Beanstalk)

> 5- via port 3000 Elastic Beanstalk environment that handles the application environment and sends requests to RDS database and receives the response to be sent to the frontend inside S3 to display the relevant webpages to the user .

​
### The Architecture Diagram is added showing the communication between these different services and infrastructure.
### The screenshots of the instances created in the aws services are added to the infrastructure directory as well.