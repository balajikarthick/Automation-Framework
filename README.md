# Automation Framework

This automation framework designed with Behaviour Driven Development approach and the following tools are used
  - Ruby
  - Selenium
  - capybara (To interact with the web browser)
  - cucumber (For Behaviour Driven approach)
  - Chrome Webdriver
 
#### Why BDD approach?

  - This approach makes writing the test scenerios simple
  - Framework maintaince will be easy

#### How is Test data maintained?
  - The test data stored in the json file
  - Using JSON function of ruby we will parse the corresponding file and use it on the feautre files accordingly 

#### What are the assertions used?
     Basic asserts provided by capybara was used
   - assert_text
   - assert_selector
#### How chanigng of the locators values are maintained ?
   - The locators values are given as a argument in the feature steps
   - If the values of the locator changes we can change those in the steps
#### Test report
   - We can get the test results via a html file which cucumber automatically creates for us
 `````sh
cucumber features/google_search.feature -f pretty -f html -o report.html
`````
#### Whether the framework is scalable for other categories and products?
   - Yes, as we wrote books as a generic term we can create feature files for toys, colths etc by reusing the steps.
#### Steps to install the setup in mac
   - Install Ruby and check the version 
`````sh
ruby -v
`````
   - Install the chromedriver
`````sh
brew install chromedriver
`````
   - Install bundler
`````sh
gem install bundler
`````
   - Download the automation framework project
   - Navigate to the folder via terminal 
   - Install all the gems from GemFile 
`````sh
bundle install
`````
   - Run the cucumber file
`````sh
cucumber features/books.feature
`````
   - If you want to get the report in a html format using this command below
`````sh
cucumber features/books.feature -f pretty -f html -o report.html
`````

#### Thank You
