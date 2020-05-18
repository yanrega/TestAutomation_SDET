require 'cucumber'
require 'watir-webdriver'

include Selenium
include RSpec::Expectations

Given(/^I launch amazon link pages$/) do
  @SignUpPage = SignUpPage.new(@browser)
  @SignUpPage.visit
end

And(/^I click on signIn tabs$/) do
  @SignUpPage.clickSignInTab
end

And(/^I click create your Amazon account buttons$/) do
  @SignUpPage.btnCreateAccount
end

And(/^I entered the names$/) do
  @SignUpPage.entertedName("Rega")
end

And(/^I entered the emails$/) do
  @SignUpPage.enteredEmail("1yanreg@gmail.com")
end

And(/^I entered the passwords$/) do
  @SignUpPage.enteredPassword("tes12345")
end

And(/^I re-entered the passwords$/) do
  @SignUpPage.reEnteredPassword("tes12345")
end

When(/^I click create your amazon button agains$/) do
  @SignUpPage.btnCreateAccountAgain
end

Then(/^I entered validation number sent by emails$/) do
  @SignUpPage.enteredValidationNumber("916609")
end

And(/^I click verify buttons$/) do
  @SignUpPage.verifyBtn
end