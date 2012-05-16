Given /^the user is not registered$/ do
  #pending # express the regexp above with the code you wish you had
  visit(new_user_path)
end

Given /^the user goes to the new user page$/ do
  #pending # express the regexp above with the code you wish you had
  visit(new_user_path)
end

Given /^the user fills in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  #pending # express the regexp above with the code you wish you had
  fill_in(arg1, :with => arg2)
end

When /^the user presses the button "([^"]*)"$/ do |arg1|
  #pending # express the regexp above with the code you wish you had
  click_on(arg1)
end

Then /^confirmation page should be shown$/ do
  pending # express the regexp above with the code you wish you had
end
