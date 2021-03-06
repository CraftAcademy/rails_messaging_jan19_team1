Feature: Log in user from the main page
    As a user,
    In order access my account
    I would like to be able to login

		Background:
					Given following users exist
					| name        | email             | password | password_confirmation  |
					| john doe    | user@yahoo.com    | password | password               |
					And I visit the site

		Scenario: User can log in to the application
				When I click on 'Login'
				And I fill in 'Email' with 'user@yahoo.com'
				And I fill in 'Password' with 'password'
				And I click on 'Log in'
				Then I should see "Signed in successfully."

		Scenario: User gives wrong password
				When I click on 'Login'
				And I fill in 'Email' with 'user@yahoo.com'
				And I fill in 'Password' with 'wrong'
				And I click on 'Log in'
				Then I should see "Invalid Email or password."

		Scenario: User gives wrong email
				When I click on 'Login'
				And I fill in 'Email' with 'wrong@yahoo.com'
				And I fill in 'Password' with 'password'
				And I click on 'Log in'
				Then I should see "Invalid Email or password."