# Unit Test

This project contains a simple login page that needs to be unit tested.

Please add unit tests to the **LoginViewControllerTest.m** file in order to test the *LoginViewController.m* class.

Currently the login screen will validate the username and password fields and will only continue with login if the username field contains "RIIS" and the password field contains "letmein". You should write test cases to ensure that the correct error message is displayed if these fields do not contain the valid login credentials.

Once the *LoginViewController* has validated that the fields contain the correct credentials, it delegates login functionality to the *LoginModel*. This model object currently provides random results. It will either throw a network exception, or accept the login credentials and return a value to the *LoginViewController* indicating it should proceed to the Welcome screen. 

You should mock the *LoginModel* to remove this indeterministic behavior, and write two more test cases. The first should check that the *LoginViewController* correctly displays an alert panel in the case of a network error. The second should test that the *LoginViewController* will correctly call the performSegue method to transition to the Welcome screen.
To help with these tests, the project has been pre-configured to work with OCMock. You are expected to Mock any classes and objects necessary to isolate the code in **LoginViewController** being tested.

# Submission Instructions

This coding test should not take more than an hour to complete. please include an estimate of the time spent writing the test cases in a comment at the top of your modified **LoginViewControllerTest.m** file

To submit, please add your running unit tests to the **LoginViewControllerTest.m** file, then return **only** this file via e-mail to tjames@riis.com

**NOTE: You are not expected to change any code other than adding test methods to the LoginViewControllerTest.m file.**
  