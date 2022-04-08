## pipeline process inside circleci.
### Using github branch main 
### CI Continuous integration:
> -  write all the commands needed for installing and building the application in the package.json files in the frontend and the backend then called these scripts inside the package.json file of the main application.
> - adding  the jobs inside circleci config.yml file for installing all the dependencies on both the frontend and backend of the application using the : `npm install` command inside package.json files.
> - Then I added the jobs for building the frontend and the backend by calling the corresponding scripts.
​
### CD  Continuous Deployment:
> - writing all the commands needed deploying the application in the package.json files in the frontend and the backend then called these scripts inside the package.json file of the main application.
> - adding the Elastic Beanstalk (aws eb) and aws in the circleci orbs for setting them up and installing them for the deployment.
    `aws-cli: circleci/aws-cli@2.1.0
  eb: circleci/aws-elastic-beanstalk@2.0.1`
> - I added the jobs inside circleci yml file for deploying the frontend and the backend just by calling the deploy scripts added to the main package.json file which correspondingly calls the deploy commands added to the package.json file of both the frontend and the backend.
> - I linked my github application to the circleci and specified the branch of interest which is the main branch so circleci is only trigged if the code pushed to the main branch.

​

​
##  added the Architecture diagram inside the infrastructure folder and the pipeline diagram inside the pipeline process folder, showing all the relationships and the communication between the different services.