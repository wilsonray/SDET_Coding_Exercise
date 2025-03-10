Feature: Login Page
  Details - Page where the users can login to their accounts

  Background:
    Given POM configuration has been initialized for "login"
    Given the user goes to the login page

  Scenario: TC001 - Successful Login and Logout
    When the user types in the field "usernameInput" with value "standard_user"
    When the user types in the field "passwordInput" with value "secret_sauce"
    When the user clicks the button "loginBtn"
    Then the element "title" should "have text" "Swag Labs"
    Then the image "shoppingCart" should "is visible"
    Then the element "url" should "match url" "https://www.saucedemo.com/inventory.html"
    When the user clicks the button "menuBtn"
    When the user clicks the button "logoutBtn"
    Then the element "url" should "match url" "https://www.saucedemo.com/"
  
  Scenario: TC002 - Failed Login
    When the user types in the field "usernameInput" with value "locked_out_user"
    When the user types in the field "passwordInput" with value "secret_sauce"
    When the user clicks the button "loginBtn"
    Then the section "errorMessage" should "have text" "Epic sadface: Sorry, this user has been locked out."
  @focus
  Scenario: TC003 - Multiple scenarios Workflow
    When the user types in the field "usernameInput" with value "standard_user"
    When the user types in the field "passwordInput" with value "secret_sauce"
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