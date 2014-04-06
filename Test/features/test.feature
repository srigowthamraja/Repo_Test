#Feature: First Test

Scenario: login test
Given launch app
When enter user name as gowtham.r@dexterity.in
And enter password as 123
And click Login button
Then I'm able to see "Project Dashboard"

#Feature: Project settings Test

Scenario: Create a survey
Given click project settings
When enter a project name as Dailytest
When enter reward points as 1
When enter survey length as 2
When enter live date as 20-12-2013
And enter close date as 30-12-2013
And enter project description as Dailytest
And Click Save button
Then I'm able to see "Project created successfully"
