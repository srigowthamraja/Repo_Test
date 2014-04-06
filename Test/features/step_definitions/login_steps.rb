Given(/^launch app$/) do
  visit("/")
end

When(/^enter user name as (.*)$/) do |user_name|
  fill_in "txtEMailId",:with=>user_name
end 

When(/^enter password as (.*)$/) do |password|
  fill_in "txtPassword",:with=>password
end

When(/^click Login button$/) do
  click_on "btnSubmit"
end

Then(/^I'm able to see "(.*?)"$/) do |page_title|
  find("div.text").should have_text(page_title)  
end

Given(/^click project settings$/) do
 page.find(:xpath, '//div[contains(., "master")]')
end

When(/^enter a project name as (.*)$/) do |project_name|
  fill_in "ctl00_ContentPlaceHolder1_txtProjectName",:with=>project_name
end

When(/^enter rewards points as (.*)$/) do |reward_points|
  fill_in "ctl00_ContentPlaceHolder1_txtRewardPoints_text",:with=>reward_points
end

When(/^enter survey length as (.*)$/) do |survey_length|
  fill_in "ctl00_ContentPlaceHolder1_txtSurveyLength_text",:with=>survey_length
end

When(/^enter live date as (.*)$/) do |live_date|
  fill_in "ctl00_ContentPlaceHolder1_txtLiveDate_dateInput_text",:with=>live_date
end

And(/^enter close date as (.*)$/) do |close_date|
  fill_in "ctl00_ContentPlaceHolder1_txtCloseDate_dateInput_text",:with=>close_date
end

And(/^enter project description as (.*)$/) do |project_description|
  fill_in "ctl00_ContentPlaceHolder1_txtProjectDescription",:with=>project_description
end

And(/^click save button$/) do
  click_on "ctl00_ContentPlaceHolder1_ibtnSurveySetting"
end

Then(/^I'm able to see project created successfully "(.*?)"$/) do |page_title|
  find("div.text").should have_text(page_title)  
end
