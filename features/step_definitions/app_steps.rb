#Used to debug the values
Then /^debugger$/ do
  byebug
  1
end

Then /^I should see "([^"]*)"$/ do |text|
  page.assert_text(text)
end

Then /^I should see "([^\"]*)" in the xpath "([^\"]*)"$/ do |text, path|
  row = page.find(:xpath, path)
  within row do
    step %{I should see "#{text}"}
  end
end

Then /^I should see "([^\"]*)" in the id "([^\"]*)"$/ do |text, id|
  row = page.find(:id, id)
  within row do
    step %{I should see "#{text}"}
  end
end
