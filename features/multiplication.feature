Feature: Multiplacation
	As a programmer
	I want to make a custom Calculator
	That can properly multiply numbers
	
Scenario: Multiplying 2 integers
	Given I have 2 integers
	When I multiply 2 integers
	Then an integer is returned
	
Scenario: Multiplying with 2 different integers	
	Given I multiply 2 integers
	When I switch the order of the integers
	Then the result shoud stay the same
	
Scenario: Multiplying with 1 as an integer
	Given I have 1 as one of two integers
	When I multiply 1 be the first integer
	Then I will get the integer back
	
Scenario: Multiplying an integer by zero
	Given I have zero as 1 of 2 integers
	When I multiply the two integers
	Then the result will be zero
	
Scenario: Subtracting with more than 2 numbers
	Given I multiply 3 integers
	When I change of the order of the integers
	Then the product will be the same
	
	
	
	
	