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
