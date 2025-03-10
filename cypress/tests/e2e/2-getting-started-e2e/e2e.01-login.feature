Feature: Login Page
  Details - Page where the users can login to their accounts

  Background:
    Given POM configuration has been initialized for "login"
    Given user data is loaded
    Given the user goes to the login page
  
  Scenario: TC001 - Successful Login and Logout
    When the user types in the field "usernameInput" with value "#usernameData#"
    When the user types in the field "passwordInput" with value "#passwordData#"
    When the user clicks the button "loginBtn"
    Then the element "title" should "have text" "Swag Labs"
    Then the image "shoppingCart" should "be visible"
    Then the element "url" should "match url" "https://www.saucedemo.com/inventory.html"
    When the user clicks the button "menuBtn"
    When the user clicks the button "logoutBtn"
    Then the element "url" should "match url" "https://www.saucedemo.com/"
  
  Scenario: TC002 - Failed Login
    When the user types in the field "usernameInput" with value "#lockedoutuserData#"
    When the user types in the field "passwordInput" with value "#passwordData#"
    When the user clicks the button "loginBtn"
    Then the section "errorMessage" should "have text" "Epic sadface: Sorry, this user has been locked out."
  
  Scenario: TC003 - Multiple scenarios Workflow
    When the user types in the field "usernameInput" with value "#usernameData#"
    When the user types in the field "passwordInput" with value "#passwordData#"
    When the user clicks the button "loginBtn"
    When the user selects the option "sortProduct" with value "lohi"
    Then the section "sortActiveOption" should "have text" "Price (low to high)"
    Then the prices should be in ascending order
    Then the section "addToCartOnesie" should "be visible"
    When the user clicks the button "addToCartFleeceJacket"
    When the user clicks the button "addToCartOnesie"
    Then the button "addToCartFleeceJacket" should "not exist"
    Then the button "addToCartOnesie" should "not exist"
    Then the button "removeFromCartFleeceJacket" should "be enabled"
    Then the button "removeFromCartOnesie" should "be enabled"
    Then the "price" of "Sauce Labs Fleece Jacket" from "Products" page is stored in "priceSauceLabsFleeceJacket" variable
    Then the "price" of "Sauce Labs Onesie" from "Products" page is stored in "priceSauceLabsOnesie" variable
    Then the section "cartIconValue" should be "equal to" "2"
    When the user clicks the button "cartButton"
    Then the "price" of "Sauce Labs Fleece Jacket" from "Cart" page is stored in "priceSauceLabsFleeceJacketInCart" variable
    Then the "price" of "Sauce Labs Onesie" from "Cart" page is stored in "priceSauceLabsOnesieInCart" variable
    Then "priceSauceLabsFleeceJacket" should be "equal to" "priceSauceLabsFleeceJacketInCart"
    When the user clicks the button "removeFromCartOnesie"
    Then the "value" of "cartIconValue" from "Cart" page is stored in "cartNumberOfItems" variable
    Then the "number" of "Sauce Labs Fleece Jacket" from "Cart" page is stored in "numberOfSauceLabsFleeceJacket" variable
    Then "cartNumberOfItems" should be "equal to" "numberOfSauceLabsFleeceJacket"
    When the user clicks the button "checkoutButton"
    When the user types in the field "firstNameInput" with value "QA_Wilson_Ray"
    When the user types in the field "lastNameInput" with value "QA_Test"
    When the user types in the field "zipPostalCodeInput" with value "99999"
    When the user clicks the button "continueButton"
    Then the "totalPrice" of "Item total" from "Checkout" page is stored in "priceTotal" variable
    Then "priceTotal" should be "equal to" "priceSauceLabsFleeceJacket"
    When the user clicks the button "finishButton"
    Then the "text" of "Thank you for your order!" from "Finish" page is stored in "thankYouText" variable
    Then "thankYouText" should be "equal to" "Thank you for your order!"
    When the user clicks the button "backHomeButton"
  
  Scenario: TC004 - Error User
    When the user types in the field "usernameInput" with value "#errorusernameData#"
    When the user types in the field "passwordInput" with value "#passwordData#"
    When the user clicks the button "loginBtn"
    When the user clicks the button "addToCartBikeLight"
    When the user clicks the button "cartButton"
    When the user clicks the button "checkoutButton"
    When the user types in the field "firstNameInput" with value "QA_Wilson_Ray"
    When the user types in the field "lastNameInput" with value "QA_Test"
    When the user types in the field "zipPostalCodeInput" with value "99999"
    When the user clicks the button "continueButton"
    When the user clicks the button "finishButton"
  
  Scenario: TC005 - Bonus (Multiple Tabs)
    When the user types in the field "usernameInput" with value "#usernameData#"
    When the user types in the field "passwordInput" with value "#passwordData#"
    When the user clicks the button "loginBtn"
    When the user clicks the link "twitterLink"
    When the user clicks the link "facebookLink"
    When the user clicks the link "linkedinLink"
    