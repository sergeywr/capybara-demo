# capybara-demo
Capybara framework proof-of-concept
## Before running tests - setup selenium grid server

### Checkout repository and install necessary gems:
 ```ruby
 > gem install cucumber
 > gem install capybara
 > gem install rspec
 > gem install site_prism
 > gem install selenium-webdriver
 > gem install appium_capybara
  ```
  After repository is checkedout and gems installed, navigate to project folder
 ```
 cd to_project_folder
 ```
 To run tests type:
 ```ruby
 > cucumber ENVIRONMENT=DESKTOP-CHROME
 ```
In terms of this project demo available ENVIRONMENT arguemnt values:
 ```
DESKTOP-CHROME
DESKTOP-FIREFOX
MOBILE-ANDROID-CHROME
 ```
 Also you can provie --tag argument, in terms of this project demo available tags:
  ```
  @desktop
  @mobile
   ```
