# Hosting a Full-Stack Application
​
## I used the udagram project to be deployed.
> * I define environment variables into circleci and passed them through the code to the deployment environment using the following command in the .bin/deploy.sh file:
 `eb setenv DB_PORT=$DB_PORT JWT_SECRET=$JWT_SECRET POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME`
> * The configuration files are updated to set the environment variables to the project code, for example, setting the server port and the server url and the database port the database url, user, and password. it's in udagram-api/src/config/config.ts.
> * I added all the scripts inside the package.json file. I added the scripts for installation, build, test and deployment for both the backend and the frontend to automate all the steps.
> * I added the screenshots of all the aws resources and environments.
> - I linked the project in github to circleci and added the config.yml file of the circleci containing all the orbs and jobs for running the scripts automatically.
> - For accessing the application please visit: `http://udagrambucket01.s3-website-us-east-1.amazonaws.com/` but please make sure you are using a browser that **doesn't enforce CORS policy** or blocking the user of the EB aws URL by the S3 URL. For running chrome without cors, please check this: `https://alfilatov.com/posts/run-chrome-without-cors/`
> For accessing my github repository which is linked to circleci, please visit: `https://github.com/May-Hassan-Ismail/Udacity_deployment`
​
## pipeline process inside circleci.
### Continuous integration:
> - First I added all the commands needed for installing and building the application in the package.json files in the frontend and the backend then called these scripts inside the package.json file of the main application.
> - I added the jobs inside circleci config.yml file for installing all the dependencies on both the frontend and backend of the application using the : `npm install` command inside package.json files.
> - Then I added the jobs for building the frontend and the backend by calling the corresponding scripts.
​
### Continuous Deployment:
> - First I added all the commands needed deploying the application in the package.json files in the frontend and the backend then called these scripts inside the package.json file of the main application.
> - I added the Elastic Beanstalk and aws in the circleci orbs for setting them up and installing them for the deployment.
> - I added the jobs inside circleci yml file for deploying the frontend and the backend just by calling the deploy scripts added to the main package.json file which correspondingly calls the deploy commands added to the package.json file of both the frontend and the backend.
> - I linked my github application to the circleci and specified the branch of interest which is the main branch so circleci is only trigged if the code pushed to the main branch.
> - The badge: [![CircleCI](https://circleci.com/gh/circleci/circleci-docs.svg?style=svg)](https://app.circleci.com/pipelines/github/May-Hassan-Ismail)
​
## All the screenshots for the EB and S3 and DB and circleci are added to the zip file and to the corresponding directories and I also added a video of the running application after being deployed.
​
## I also added the Architecture diagram inside the infrastructure folder and the pipeline diagram inside the pipeline process folder, showing all the relationships and the communication between the different services.