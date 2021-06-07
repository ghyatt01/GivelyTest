## Cucumber Java Test Automation ##

This repository is for A Gively Take Home Challenge

### Pre-requisites: ###

***Maven*** 

***Openjdk-12.0.1.jdk***

***Java(TM) SE Runtime Environment (build 14.0.1+7)***

***IDE (IntelliJ or Eclipse is ideal)***

***Disable Auto-Update on The Browser you choose to test with (if running a UI test) as an updated browser version may require adjusting a dependency***

---

**Running a Test**

There are a few options for running a test cases:

**Important Note: When running Locally, Go to testng.xml file and adjust the path for the Test Runner to fit your folder structure.**
1. Maven


	A). From the command line, running the command "mvn test" will run all test cases in the project.
		
	B) Another option to run a specific test case would be to pass a tag placed on a test: For Example:
			 mvn test -Dcucumber.options='--tags "@test"'
			This command would run any test scenario on a feature file that has the tag "@adhoc" associated with it. You can use 
			tagging to run a particular set of test cases.

---

# The Challenge

###SETUP
Open the link https://givelify.com/givenow/1.0/OTA=/selection & navigate to Join

Create test cases for the join page (excluding Facebook join/sign up option)

2. Automation Test (Using Selenium Webdriver, your choice of programming language, and Page Object Model)

   SETUP:
   Open the link https://givelify.com/givenow/1.0/OTA=/selection , navigate to Sign in and create a Givelify donor account by joining


Starting from the link https://givelify.com/givenow/1.0/OTA=/selection, automate the following tests:

1.	Using a valid login confirm successful login
2.	Using an invalid email, valid password, confirm the error message text is present
3.	Using a valid email and invalid password, confirm the error message text is present
4.	Click on the forgot password link & confirm the forgot password modal is shown
5.	Click on the forgot password link, enter an invalid email & confirm the error message text is present
6.	Click on the forgot password link, enter a valid Givelify email, confirm that the modal closes & confirm that the password reset sent text is present

3. API Automation Testing (This can be done with rest assured, postman, or whatever you feel comfortable with)
   SETUP:  
   Generate a key:  http://www.omdbapi.com/apikey.aspx (using the free option)

Navigate to this url and review the parameters portion of this page http://www.omdbapi.com/
API Automation tests to create:
Using the above url and parameters, add further parameters in your api to perform a search for the movie title “A star is born” created in 2018

Run the following tests
•Verify that the response is successful
•Verify that the response is not an error
•Verifying that the year returned in the api response is 2018
•Verify that the response body contains Bradley
•Verify that the response time for the api takes less than 300 milliseconds
•Verify that the entire response/body matches what you are the response you are expecting
•Verify that the api response structure (schema) is correct



## References

For assistance on Cucumber functionality:
	https://cucumber.io/docs/cucumber/
	
	