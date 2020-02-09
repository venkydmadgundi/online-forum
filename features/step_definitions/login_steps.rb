Given /^a registered user with the email "(.*)" with password "(.*)" exists$/ do |email, password|
  @user = build(:user, :email => email, :password => password, :password_confirmation => password)
end

Given /^a confirmed user with the email "(.*)" with password "(.*)" exists$/ do |email, password|
  @user = build(:user, :email => email, :password => password, :password_confirmation => password)
end

Given /^no current user$/ do
  new_user_session_path
  @user = nil
end

Then /^the login form should be shown$/ do
  get "/users/sign_in"
end

Then /^I should\s?((?:not)?) be signed in$/ do |present|
  assert_equal controller.signed_in?, present.blank?
end

Given /^I am on the "(.*)" page$/ do |url|
  get url
end

When /^I access a page$/ do
  get "/"
end

When /^I press "(.*)"$/ do |button|
	byebug
  click_button(button)
end

When /^I fill in "(.*)" with "(.*)"$/ do |field, value|
  visit '/users/sign_in'
  fill_in(field, :with => value)
end

Then /^I should see "(.*)"$/ do |text|
	byebug
  assert !!(body =~ /#{text}/m), body
end

Then /^I should not see "(.*)"$/ do |text|
  assert !!(body !~ /#{text}/m), body
end

Then /^I should be redirected to "(.*)"$/ do |path|
	byebug
  assert_template path.gsub(/^\//, '')
  #follow_redirect! if response.redirect?
end