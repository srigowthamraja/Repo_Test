Feature: First Test

Scenario: login test
Given launch app
When enter user name as gowtham.r@dexterity.in
And enter password as 123
And click Login button
Then I'm able to see "Project Dashboard"

