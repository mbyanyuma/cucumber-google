Feature: Searching in Google

  Scenario: Searching for a very common word
	When I search google for a common term
	And each search result summary contains the search term	
    Then each search result title contains the search term
	