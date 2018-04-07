Feature: Search for data catalog book in amazon
 
Scenario: Search for data catalog book
 Given I go to amazon website
 Then I choose categories as "Books" from id "searchDropdownBox"
 Then I search for "data catalog" in id "twotabsearchtextbox"
 Then I compare the data with test data in "books"
 
