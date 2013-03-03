Feature: Check names
    Test a variety of names against the demo page

@javascript
Scenario Outline: Check that the demo page renders the names passed in the URL
	
	Given I am on "/demo/hello/<name>"
    Then I should see "Hello <name>!"

    Examples:
		| name |
		| World |
        | Shane |
        | shane |
        | exclaimation! |
        | plus+ |
        | period. |