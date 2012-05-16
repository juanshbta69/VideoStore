Feature: The user logs into the system
	Scenario: User is not registered
		Given the user is not registered
		And the user goes to the new user page
		And the user fills in "Name" with "Juan" 
		And the user fills in "E mail" with "juan@mail.com"
		And the user fills in "Phone number" with "0180001234"
		And the user fills in "Address" with "356 Street"
		And the user fills in "Password" with "123456"
		When the user presses the button "Create User"
		Then confirmation page should be shown

	Scenario: The user fills out the form wrong
		Given the user is not registered
		And the user is filling out the form
		And the user fills in "Name" with "Juan" 
		And the user fills in "E mail" with ""
		And the user fills in "Phone number" with "0180001234"
		And the user fills in "Address" with "356 Street"
		And the user fills in "Password" with "123456"
		When the user presses the button "Create User"
		Then the new user page is shown again with an error message 



	