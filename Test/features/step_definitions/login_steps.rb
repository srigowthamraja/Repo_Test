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


