Feature: Login to swag labs site

  The user should be able to login to the swaglabs site for one user currently

  Scenario: login to swag labs site
    Given driver 'https://www.saucedemo.com/'
    And input('input[id=user-name]', 'standard_user')
    And input('input[id=password]', 'secret_sauce')
    When click('input[id=login-button]')
    Then waitForUrl('https://www.saucedemo.com/inventory.html')
    And match driver.url == 'https://www.saucedemo.com/inventory.html'