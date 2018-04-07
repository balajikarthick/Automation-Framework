Given /^I go to amazon website$/ do
  visit '/'
end

Then /^I choose categories as "([^"]*)" from id "([^"]*)"$/ do |value,field|
  page.assert_selector(:id, field, :visible => false)
  select(value, :from => field,:match=>:prefer_exact, :visible => false)
end

Then /^I search for "([^"]*)" in id "([^"]*)"$/ do |value,field|
  page.assert_selector(:id, field, :visible => false)
  fill_in(field, :with => value, :match => :prefer_exact, :visible => false)
  find('input[value="Go"]').click
  page.assert_no_text('did not match any products.')
  find(:xpath, "//*[@id='result_0']/div/div/div/div[2]/div[1]/div[1]/a").click
end

Then /^I compare the data with test data in "([^"]*)"$/ do |value|
  dir_to_json = Dir.pwd + '/features/support/data'
  @json_hash = JSON.parse(IO.read("#{dir_to_json}/#{value}.json"))
  steps %{
  	Then I should see "#{@json_hash['Title']}" in the id "productTitle"
  	Then I should see "#{@json_hash['Edition']}" in the id "bookEdition"
  	Then I should see "#{@json_hash['Kindle Price']}" in the xpath "//*[@id='mediaTab_heading_0']/a/span/div[2]/span"
  	Then I should see "#{@json_hash['Paperback Rent Price']}" in the id "rentPrice"
  	Then I should see "#{@json_hash['Paperback Buy Price']}" in the xpath "//*[@id='newOfferAccordionRow']/div/div[1]/a/h5/div/div[2]/span[2]"
    Then I should see "#{@json_hash['Pages']}" in the xpath "//*[@id='productDetailsTable']/tbody/tr/td/div/ul/li[1]"
    Then I should see "#{@json_hash['Publisher']}" in the xpath "//*[@id='productDetailsTable']/tbody/tr/td/div/ul/li[2]"
    Then I should see "#{@json_hash['Language']}" in the xpath "//*[@id='productDetailsTable']/tbody/tr/td/div/ul/li[3]"
    Then I should see "#{@json_hash['ISBN-10']}" in the xpath "//*[@id='productDetailsTable']/tbody/tr/td/div/ul/li[4]"
    Then I should see "#{@json_hash['ISBN-13']}" in the xpath "//*[@id='productDetailsTable']/tbody/tr/td/div/ul/li[5]"
    Then I should see "#{@json_hash['Product Dimensions']}" in the xpath "//*[@id='productDetailsTable']/tbody/tr/td/div/ul/li[6]"
    Then I should see "#{@json_hash['Shipping Weight']}" in the xpath "//*[@id='productDetailsTable']/tbody/tr/td/div/ul/li[7]"
    Then I should see "#{@json_hash['Amazon Best Sellers Rank']}" in the id "SalesRank"
    Then I should see "#{@json_hash['Author']}" in the xpath "//*[@class='author notFaded']"
  }
end

