Given /^I have run the seed task$/ do
  load Rails.root + "db/seeds.rb"
end

Then /^I should not see "(.*?)" element$/ do |selector|
  page.should_not have_css(selector), "Expected to not see the #{selector} elemetn, but did."
end