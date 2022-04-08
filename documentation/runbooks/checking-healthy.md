Follow the following steps to check the health of an elastic beanstalk application
1. start by connecting the eb cli `eb use <application-name>`.
2. check the health of the enviroment with the `eb health` 
3. if you not see the "ok" status ,use the `eb logs` command to inspect the failures.