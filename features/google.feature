Feature: Google

	Scenario: Entering Google field with text
		Given I have a browser on google.com
		When I enter text into the search field
		Then I can see the text